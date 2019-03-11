cask 'node8' do
  version '8.15.1'
  sha256 'b87fba0aade8caf51182e3ec3f6293cf8556b4368d7fb5f30e4679188c3b808a'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
