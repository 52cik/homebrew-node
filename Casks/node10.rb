cask 'node10' do
  version '10.12.0'
  sha256 'a22893b99cef0dd8718dc471d0a54b768f5c5da0135f004d0d222b186b237ba3'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
