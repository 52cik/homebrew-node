cask 'node10' do
  version '10.11.0'
  sha256 'aa53d2f75e6199b7963a07ad1cc4c130b4c81fd3e61758c0a9cd1db9551dec85'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
