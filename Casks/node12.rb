cask 'node12' do
  version '12.0.0'
  sha256 'cc8e8c49eeafa5294897c18ad985fa569e2bdd5265e2897a04056c57899d1133'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
