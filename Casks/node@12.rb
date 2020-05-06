cask 'node@12' do
  version '12.16.3'
  sha256 'a78f8c22ac83f2f6ea2932422ae3b0b37659c443bf052d69450198c8250b5cd2'
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
