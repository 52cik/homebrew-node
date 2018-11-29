cask 'node10' do
  version '10.14.0'
  sha256 '5d6dd4ff707c467db619452fe09c0dd6f99e3b935ddfeae9e0136595856565a2'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
