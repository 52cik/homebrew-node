cask 'node8' do
  version '8.11.3'
  sha256 'e4c21b34356cc734034d6b19431e8c4d191b3eac698cad23b75dc99bf34398f9'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
