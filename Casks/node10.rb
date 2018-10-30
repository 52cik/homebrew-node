cask 'node10' do
  version '10.13.0'
  sha256 '4246d8ceafe3c5f8b3a5012b2fccc030e788a263d71eb83620397f25e001fc59'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
