cask 'node10' do
  version '10.16.0'
  sha256 '27be4450cf0e3a5ce7db4dbb01cb7524b1d03bc3d53776fa22cc2a339d5028f0'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
