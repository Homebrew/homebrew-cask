cask :v1 => 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml'
  homepage 'http://candysquare.com/products/zepheer/'
  license :unknown    # todo: improve this machine-generated value

  app 'Zepheer.app'
end
