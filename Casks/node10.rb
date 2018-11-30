cask 'node10' do
  version '10.14.1'
  sha256 '306fafbd30a3c52a4c9563ed6acf3da04ae55ae8be5a1b8329e5fca53807f596'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
