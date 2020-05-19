cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.1.1'
  sha256 'df2e7708e1d42f16f45c44c19eb1b368c8a79fc06687fc061b15517e67f7f1ed'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
