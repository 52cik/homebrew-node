cask 'node11' do
  version '11.14.0'
  sha256 '6de783e429a3d5b7237dbbb4f9c14b5a7132fc52a0beae631740b2b7f3edf596'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
