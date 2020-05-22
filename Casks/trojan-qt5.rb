cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.1.2'
  sha256 '7c21c2e5c33d2004f576d24d66494307981111e415d0a430d10322a6cb7e39b2'

  url "https://github.com/TheWanderingCoel/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/TheWanderingCoel/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/TheWanderingCoel/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
