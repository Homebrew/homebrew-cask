cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.1.5'
  sha256 '3ac14256a6dfbd0cb222bf67c154cd50688ef93bfd2396f4576af863317f3408'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
