cask 'yujitach-menumeters' do
  version '1.9.6'
  sha256 'c2fe26a31743b9d4a0216a4415b8253dd0c2a1fd4d6d1fc7d2d4b9e33d9cc588'

  url "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom',
          checkpoint: '3fc1845ad638f6b32312a4dd61c640d60d5ef4cf2684f7470c98c2b3eaeb54d9'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap trash: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
