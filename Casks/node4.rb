cask 'node4' do
  version '4.9.1'
  sha256 '481f9544fda1e5b98a6612a0cc0dd05c33e52315dd8e79555a79923a95469cd7'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  # license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
