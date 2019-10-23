cask 'node@13' do
  version '13.0.0'
  sha256 'c1faf0b561da02a4896dd64bcb36f2fe494b08a366a93cf987842d5d87e482d5'
  # https://npm.taobao.org/mirrors/node/latest-v13.x/SHASUMS256.txt

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
