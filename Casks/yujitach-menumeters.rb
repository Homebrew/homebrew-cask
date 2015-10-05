cask :v1 => 'yujitach-menumeters' do
  version '1.9'
  sha256 'ecfda83c213c5562b9be1b9fd430c78303d5b246d92e3e31822dcbe01acf3107'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  name 'MenuMeters'
  name 'MenuMeters El Capitan Port'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'
  license :gpl

  prefpane 'MenuMeters.prefPane'

  zap :delete => '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
