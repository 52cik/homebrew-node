cask 'node11' do
  version '11.4.0'
  sha256 '05fa746e76e00d45db69a4a417b2d3b2761a96df1ff566afb2301d5ad27f324f'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
