cask 'node8' do
  version '8.15.0'
  sha256 'c260dd072480208cc4bd8df1a5a022e82d21d685ebdbbf1421a6ebe3c023a566'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
