cask 'yujitach-menumeters' do
  version '1.9.4'
  sha256 'eaf8c7e23c68248d6231de94095157758046f0cb574c8651a9c986659fba58d5'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  name 'MenuMeters for El Capitan (and later)'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
