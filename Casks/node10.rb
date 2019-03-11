cask 'node10' do
  version '10.15.3'
  sha256 'f4d0b944618afae2835b500e0cc1c5a013912597fce5560cd4bcb534f5270754'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
