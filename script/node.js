const fs = require('fs');
const path = require('path');
const https = require('https');

// node 版本hash文件
const versions = {
  node4: {
    file: 'node4.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt',
  },
  node6: {
    file: 'node6.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt',
  },
  node7: {
    file: 'node7.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt',
  },
  node8: {
    file: 'node8.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt',
  },
  node9: {
    file: 'node9.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt',
  },
  node10: {
    file: 'node10.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt',
  },
};

// 匹配线上版本 hash 值
const RE_ONLINE = /\b(\w{64})\s+node-v([\d.]+)\.pkg/m;
// 匹配本地版本 hash 值
const RE_LOCAL = /version\s+['"]([\d.]+)['"][\s\r\n]+sha256\s+['"](\w{64})['"]/;


/**
 * 抓取页面
 *
 * @param {String} url
 * @returns {Promise}
 */
function getUrl(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      if (res.statusCode !== 200) {
        reject(new Error(`Request Failed.\nStatus Code: ${res.statusCode}`));
        res.resume();
      } else {
        let rawData = '';
        res.setEncoding('utf8');
        res.on('data', chunk => (rawData += chunk));
        res.on('end', () => resolve(rawData));
      }
    }).on('error', reject);
  });
}


/**
 * 加载文件
 *
 * @param {String} file
 * @returns {String}
 */
function getFile(file) {
  return fs.readFileSync(path.join(__dirname, '..', 'Casks', file), 'utf8');
}

/**
 * 写入文件
 *
 * @param {String} file
 * @param {String} data
 * @returns {String}
 */
function putFile(file, data) {
  return fs.writeFileSync(path.join(__dirname, '..', 'Casks', file), data, 'utf8');
}


// 遍历更新版本
Object.keys(versions).forEach((ver) => {
  getUrl(versions[ver].url)
    .then((data) => { // 抓取线上版本
      const m = data.match(RE_ONLINE);

      if (m === null) {
        return Promise.reject(Error(`${ver} 线上版本信息抓取失败！`));
      }

      // 线上版本
      return {
        version: m[2], // 最新版本号
        SHASUMS256: m[1], // 哈希值
      };
    })
    .then((online) => { // 抓取本地版本
      const content = getFile(versions[ver].file);
      const m = content.match(RE_LOCAL);

      if (m === null) {
        return Promise.reject(Error(`${ver} 本地文件信息匹配失败！`));
      }

      // 本地版本
      return {
        online,
        local: {
          content,
          version: m[1],
          SHASUMS256: m[2],
        },
      };
    })
    .then((data) => { // 更新版本
      if (data.online.version === data.local.version) { // 版本一致则忽略
        return false;
      }

      const content = data.local.content
        .replace(/version\s+['"]([\d.]+)['"]/, `version '${data.online.version}'`)
        .replace(/sha256\s+['"](\w{64})['"]/, `sha256 '${data.online.SHASUMS256}'`);

      putFile(versions[ver].file, content);
      return true;
    })
  .then((isUpdate) => {
    console.log(ver, isUpdate ? 'updated!' : 'done!');
  })
  .catch((err) => {
    console.log('Error:', err.message);
  });
});

