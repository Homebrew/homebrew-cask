cask 'zepheer' do
  version '2.3.2'
  sha256 'fc2f0ac11954c3f24007433d4ade618a94848d9eed44a1a68b9f9f677710260d'

  url "http://candysquare.com/files/zepheer/updates/Zepheer#{version}.zip"
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml',
          checkpoint: '1dae77f4df171ff5dace0e15e1c2a8b52fd719adfd7de95123674741e0262db3'
  name 'Zepheer'
  homepage 'http://candysquare.com/products/zepheer/'

  app 'Zepheer.app'
end
