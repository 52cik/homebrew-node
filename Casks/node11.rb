cask 'node11' do
  version '11.15.0'
  sha256 '1f8502e6652ab5c90210eafc2a1573f5aa88697644dadd718a0a94c77c3fa736'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
