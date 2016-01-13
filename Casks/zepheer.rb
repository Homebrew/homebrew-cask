cask 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml',
          :checkpoint => '1dae77f4df171ff5dace0e15e1c2a8b52fd719adfd7de95123674741e0262db3'
  name 'Zepheer'
  homepage 'http://candysquare.com/products/zepheer/'
  license :commercial

  app 'Zepheer.app'
end
