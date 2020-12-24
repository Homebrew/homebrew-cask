cask "texmacs" do
  version "1.99.17"
  sha256 "8b525fea84a4afe93a9c651caf34e4cbca2f2f9d596b060f6f95fa85683a33d8"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
