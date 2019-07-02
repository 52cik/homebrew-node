cask 'node12' do
  version '12.5.0'
  sha256 'ceedac959af76189b6bd2edda4bbce73a7d41703df1c083c46b107b98f3bbb57'

  # https://npm.taobao.org/mirrors/node/latest-v11.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
