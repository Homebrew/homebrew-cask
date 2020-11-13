cask "texmacs" do
  version "1.99.15"
  sha256 "04a895de6a30454f4acd0ae95bffd8486871c93215b750cae11dbaf9ffd3f5ef"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://www.texmacs.org/tmweb/download/macosx.en.html"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
