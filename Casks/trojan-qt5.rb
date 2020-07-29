cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.2.0'
  sha256 'd99e2f49f76b4a103fc9e7faf6d57afd824b4e0e91cae48b8832bc0cf8d60c43'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
