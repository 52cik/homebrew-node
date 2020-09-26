cask 'node@12' do
  version '12.18.4'
  sha256 '80698fcd7e08cc2335ec531a0e9400f86c7da331ed4b6b8e4c8476fd499f1428'
  # https://npm.taobao.org/mirrors/node/latest-v12.x/SHASUMS256.txt

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
