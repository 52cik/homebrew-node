cask 'node10' do
  version '10.9.0'
  sha256 'b8c4edc1ee389ffc96833165e9d7249d8b2d48db11ae9ec91d5787953b6d11da'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
