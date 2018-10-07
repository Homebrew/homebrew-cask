cask 'zepheer' do
  version '2.3.2'
  sha256 'fc2f0ac11954c3f24007433d4ade618a94848d9eed44a1a68b9f9f677710260d'

  url "https://candysquare.com/files/zepheer/updates/Zepheer#{version}.zip"
  appcast 'https://candysquare.com/files/zepheer/updates/appcast.xml'
  name 'Zepheer'
  homepage 'https://candysquare.com/products/zepheer/'

  app 'Zepheer.app'
end
