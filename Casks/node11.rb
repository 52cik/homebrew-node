cask 'node11' do
  version '11.3.0'
  sha256 'd9de46dc842b10e0e73e9a8f9b78a891f224763fa943e593937c45666e1f9d78'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
