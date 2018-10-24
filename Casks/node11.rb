cask 'node11' do
  version '11.0.0'
  sha256 '44b57ab4b4d64168129c53c5053b01e75177bc53699853a9907ee22020c510af'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
