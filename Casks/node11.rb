cask 'node11' do
  version '11.11.0'
  sha256 '36c8172c007bffcca95a60c1e65ec572126342a43c14fcb5d2cf6555036ce484'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
