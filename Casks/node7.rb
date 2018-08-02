cask 'node7' do
  version '7.10.1'
  sha256 'f248dcf3d7d83cd19bba8196c4707b0b2e1e72e523403b4641418516f444b7e7'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
