cask 'node11' do
  version '11.2.0'
  sha256 'e5fc79d4a840913f53b6ff6be66f6c2eec23a9ebe2c606bb690b32d984226ffc'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
