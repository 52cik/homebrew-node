cask 'node8' do
  version '8.14.0'
  sha256 '9899a365e2534e60b518e5feb0ff918fbea9953e789cbb2ecd7e58c95600ec5c'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
