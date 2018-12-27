cask 'node11' do
  version '11.6.0'
  sha256 'de17fb9f6fa41a2b35f46fbc9cb090db203d4d828d9c6004bb4063902377737c'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
