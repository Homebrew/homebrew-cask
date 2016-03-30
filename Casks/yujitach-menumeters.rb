cask 'yujitach-menumeters' do
  version '1.9.2'
  sha256 'ab35bf334b863e589a85b24aef670e748289e7228a26aaca5bb3db72f1fb00d3'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  name 'MenuMeters El Capitan Port'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'
  license :gpl

  prefpane 'MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
