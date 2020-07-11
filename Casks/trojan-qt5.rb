cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.3.1'
  sha256 '8f5075837cfc0f58d4b41f272403e6efe333292a3069e0998a4eefea3177bfb1'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
