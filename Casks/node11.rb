cask 'node11' do
  version '11.10.0'
  sha256 'd24d423fd69921e12a2ea8be1bf8ee0f0287132bbdd487a58ce2ba55d901eeb0'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
