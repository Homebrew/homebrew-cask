cask 'yujitach-menumeters' do
  version '1.9.3'
  sha256 'b81b2180bbb4d97097ede77726b0f6bbdd9e191d7817e77b339053e1ae33df8e'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  name 'MenuMeters for El Capitan (and later)'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
