cask 'node6' do
  version '6.15.1'
  sha256 '4e3675e929506a2ec05f232cb220995ac2c31f7e8c6e2d6b46dabffaedc51075'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
