cask :v1 => 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  name 'Zepheer'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml'
  homepage 'http://candysquare.com/products/zepheer/'
  license :commercial

  app 'Zepheer.app'
end
