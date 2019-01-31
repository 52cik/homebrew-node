cask 'node10' do
  version '10.15.1'
  sha256 'bcfa8147c384a2184d33c190211c8b4037e514e75368308738a0c57095266499'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
