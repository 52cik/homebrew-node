cask 'node@12' do
  version '12.14.1'
  sha256 '043b4d3d35c3ede0c496d2cb32ce51e37d70bf5f21c0dc0598db7e2af46ac667'
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
