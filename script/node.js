const fs = require('fs');
const { join } = require('path');
const https = require('https');

// node 版本
const versions = '4 6 7 8 9 10'.split(' ');
// 镜像地址
const host = 'https://npm.taobao.org/mirrors/node';
// node个版本的哈希表
const mirrors = versions.reduce((res, v) => {
  res[v] = `${host}/latest-v${v}.x/SHASUMS256.txt`;
  return res;
}, {});

// 匹配哈希表中的 pkg 哈希值 和 版本号
const reHash = /^(\w{64})\s+node-v([\d.]+)\.pkg$/m;
// 本地 script 脚本中的 版本号 和 哈希值
const reScript = /version '([^']+)'/;

/**
 * 请求方法
 * @param {string} url 地址
 * @return {Promise<string>}
 */
function fetch(url) {
  return new Promise((resolve, reject) => {
    https
      .get(url, res => {
        if (res.statusCode !== 200) {
          reject(new Error(`Request Failed.\nStatus Code: ${res.statusCode}`));
          res.resume();
        } else {
          let rawData = '';
          res.setEncoding('utf8');
          res.on('data', chunk => (rawData += chunk));
          res.on('end', () => resolve(rawData));
        }
      })
      .on('error', reject);
  });
}

/**
 * 脚本路径
 * @param {string} ver 大版本号
 * @return {string}
 */
function scriptPath(ver) {
  return join(__dirname, '..', 'Casks', `node${ver}.rb`);
}

/**
 * 获取本地脚本中的版本
 * @param {string} ver 大版本号
 * @return {string}
 */
function getScriptVersion(ver) {
  const str = fs.readFileSync(scriptPath(ver), 'utf8');
  return (str.match(reScript) || 0)[1];
}

/**
 * 写入本地脚本中的版本
 * @param {string} ver 大版本号
 */
function setScriptVersion(ver, { version, hash }) {
  const path = scriptPath(ver); // 本地路径
  const str = fs
    .readFileSync(path, 'utf8')
    .replace(/version '([^']+)'/, `version '${version}'`)
    .replace(/sha256 '([^']+)'/, `sha256 '${hash}'`);
  fs.writeFileSync(path, str, 'utf8');
}

/**
 * 更新版本
 * @param {string} ver 大版本号
 * @return {Promise<string>}
 */
async function update(ver) {
  const SHASUMS256 = await fetch(mirrors[ver]);
  const m = (SHASUMS256 || '').match(reHash);

  if (!m) {
    throw Error(`SHASUMS256 not found.`);
  }

  const [, hash, version] = m; // 获取版本
  const localVersion = getScriptVersion(ver); // 本地版本

  if (version === localVersion) {
    return 'done.';
  }

  setScriptVersion(ver, { version, hash }); // 更本地文件版本
  return `update to ${version}.`;
}

// run
(async () => {
  const tasks = versions.map(ver => {
    return update(ver)
      .then(message => {
        console.log(`node${ver} ${message}`);
      })
      .catch(err => {
        console.error(`node${ver} - ${err.message}`);
      });
  });
  await Promise.all(tasks);
})();
