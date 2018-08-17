cask 'node6' do
  version '6.14.4'
  sha256 '487c425a78f5f82a3c480007664b6a670af22d7ee719bd7e5a25c8c6950d2400'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
