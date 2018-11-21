cask 'node8' do
  version '8.13.0'
  sha256 'aa289d92179f71a8b3516259d7f266c7f9a245cd16a6853a861b6cf9bea92ad0'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
