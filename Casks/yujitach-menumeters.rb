cask 'yujitach-menumeters' do
  version '1.9.7'
  sha256 'a7a87ae10906d5555763bd889c688a275e8d75d43ba92c17bb432065a2239a51'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap trash: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
