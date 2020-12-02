cask "texmacs" do
  version "1.99.16"
  sha256 "ea194943e992d1b6335f6533527e65cad69ee096b2025398012656362cd4f04f"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
