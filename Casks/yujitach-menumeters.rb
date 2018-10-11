cask 'yujitach-menumeters' do
  version '1.9.7bis'
  sha256 '6cf2f7b312c1c13f74e9d56082f48b50b7ca5909ee3589df916a65818ac390d9'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version.major_minor_patch}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap trash: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
