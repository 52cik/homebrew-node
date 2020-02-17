cask 'node@10' do
  version '10.19.0'
  sha256 '60eeec991f02e5564d4047387117c6c1884aa8d247c538dc93c51e134eec467f'
  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "https://cdn.npm.taobao.org/dist/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: [
                       'org.nodejs.node.pkg',
                       'org.nodejs.npm.pkg'
                     ]

  zap delete: [
               '/usr/local/lib/node_modules',
               '~/.npmrc',
               '~/.npm',
               '~/.node-gyp',
               '~/.node_repl_history',
               '~/.v8flags*',
               '~/.yarnrc',
               '~/Library/Caches/Yarn'
              ]
end
