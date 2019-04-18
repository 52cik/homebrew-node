cask 'node8' do
  version '8.16.0'
  sha256 '6ae83b06031b375330f869ae77f522e5a629a4f3dbf8235e299b4e50ea18cce9'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
