cask 'node10' do
  version '10.10.0'
  sha256 '8d6771b24b79a156aac2600fbc8ec34957542ba3ea6e63b2e7a9d56f3af68637'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
