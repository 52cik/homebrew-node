cask 'node11' do
  version '11.13.0'
  sha256 '255ef8b33f622bf2377cd3acc4197f232cd120b60143369cb6ff88dc939d0419'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
