cask 'node11' do
  version '11.12.0'
  sha256 '660381c12d2c8d1cc44ddeb1ac7cac4d3a1951e51b38d87b27da231783d5cdb7'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
