cask 'yujitach-menumeters' do
  version '1.9.3'
  sha256 '1bcd2c6fede1171ba23c8dd57082a6f48caabad4cc8ccd959d3ea0f800b244e0'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  name 'MenuMeters for El Capitan (and later)'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
