cask 'trojan-qt5' do
  version '0.0.8'
  sha256 '3a3ac0f68376cc51f1699f0e2da7d648d629bd367431ebbfc92136c59e04bb1a'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
