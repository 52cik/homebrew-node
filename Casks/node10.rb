cask 'node10' do
  version '10.15.0'
  sha256 'b80f5b3136ed993f31c28cd37b54fd8528ff2620bc2423ea440aa41f61a57412'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
