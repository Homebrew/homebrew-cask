cask 'yujitach-menumeters' do
  version '1.9.5'
  sha256 '1f1b1c50e2571be5a3e380642019cc8fc46a482e230d04c4a2ff4514b823a6a8'

  url "http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom',
          checkpoint: '01a1f125355897c488c91588ad65c1d57628ef9a8f4afde5c749a8762851ce14'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap delete: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
