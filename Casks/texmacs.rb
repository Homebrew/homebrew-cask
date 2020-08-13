cask "texmacs" do
  version "1.99.13"
  sha256 "4d9e3df9fb5713ddca84dd07e6bda606a7ac4576f7120ea80f6c89a7b8dc4545"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://www.texmacs.org/tmweb/download/macosx.en.html"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
