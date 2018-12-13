cask 'node10' do
  version '10.14.2'
  sha256 '020fb3586b5209bb21cf26924ad9a4b32af94bb0ea5c2ff39117de706ede3279'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
