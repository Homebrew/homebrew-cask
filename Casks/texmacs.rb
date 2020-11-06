cask "texmacs" do
  version "1.99.14"
  sha256 "d55d4577f23b644f81b480960b258f5800c16ad22fdfc5350cf1d9f1d44a5914"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://www.texmacs.org/tmweb/download/macosx.en.html"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
