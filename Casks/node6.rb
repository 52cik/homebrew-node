cask 'node6' do
  version '6.16.0'
  sha256 'af45957ea17e5358eaa361476648817a4d68e7ae7d1e8f7f0b097cf02f389757'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
