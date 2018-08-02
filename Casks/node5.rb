cask 'node5' do
  version '5.12.0'
  sha256 '8835e19bff36fe2a0120e8b189aa33ea87e99eb8b08605212a5ddb8fb63bcaf2'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
