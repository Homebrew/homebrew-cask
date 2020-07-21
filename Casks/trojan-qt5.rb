cask 'trojan-qt5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '1.4.0'
  sha256 '05886c42098dd3b9cc2e25daa0b18e43e4b65abc9e86b4e1973b12defdf73b82'

  url "https://github.com/Trojan-Qt5/Trojan-Qt5/releases/download/v#{version}/Trojan-Qt5-macOS.dmg"
  appcast 'https://github.com/Trojan-Qt5/Trojan-Qt5/releases.atom'
  name 'Trojan-Qt5'
  homepage 'https://github.com/Trojan-Qt5/Trojan-Qt5'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'trojan-qt5.app'
end
