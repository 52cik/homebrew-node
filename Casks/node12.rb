cask 'node12' do
  version '12.2.0'
  sha256 '80a45502c1a5810f6ae87935b2a9f1612d4cd76cdccddc490dca6d0cbdfa8c3d'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
