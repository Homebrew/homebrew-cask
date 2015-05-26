cask :v1 => 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  name 'Zepheer'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml'
  homepage 'http://candysquare.com/products/zepheer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Zepheer.app'
end
