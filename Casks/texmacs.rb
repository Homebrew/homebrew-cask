cask "texmacs" do
  version "1.99.17"
  sha256 "8b525fea84a4afe93a9c651caf34e4cbca2f2f9d596b060f6f95fa85683a33d8"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
