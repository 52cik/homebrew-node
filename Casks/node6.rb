cask 'node6' do
  version '6.17.1'
  sha256 '372ddb024919f0ee9293b222adcb284c5ad56e914b8f844f4d4bd236f42f39d0'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
