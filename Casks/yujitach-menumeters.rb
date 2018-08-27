cask 'yujitach-menumeters' do
  version '1.9.6'
  sha256 'c2fe26a31743b9d4a0216a4415b8253dd0c2a1fd4d6d1fc7d2d4b9e33d9cc588'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap trash: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
