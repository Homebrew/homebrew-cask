cask 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  name 'Zepheer'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml',
          :sha256 => 'a9cee73258eb4d3a3b115b215ce7abc810aec4014fc2ba4b9cd20bab8bcb33c6'
  homepage 'http://candysquare.com/products/zepheer/'
  license :commercial

  app 'Zepheer.app'
end
