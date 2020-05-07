cask 'trojan-qt5' do
  version '1.0.2'
  sha256 'a563bd69d4aff26eba50acb6dfcc268a788b3ff883b0a56dc8cf6fb4058bdadb'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
