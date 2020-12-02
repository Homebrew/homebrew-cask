cask "texmacs" do
  version "1.99.16"
  sha256 "ea194943e992d1b6335f6533527e65cad69ee096b2025398012656362cd4f04f"

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "http://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "http://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
