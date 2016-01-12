cask 'zepheer' do
  version :latest
  sha256 :no_check

  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml',
          :sha256 => '5a0ff42fecfa4ef956ec995243b5033e6330bf1d508aa47f467433095c978e60'
  name 'Zepheer'
  homepage 'http://candysquare.com/products/zepheer/'
  license :commercial

  app 'Zepheer.app'
end
