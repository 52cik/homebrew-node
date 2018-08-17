cask 'node8' do
  version '8.11.4'
  sha256 '7a6aa21c443e6aaff8e28b815278478291c862c23f56b63e3d86e4f93a4c9296'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
