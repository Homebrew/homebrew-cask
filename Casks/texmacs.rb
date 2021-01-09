cask "texmacs" do
  version "1.99.18"
  sha256 "8e1bd0470fa6ea824cf077df1d08567f1fe05a207c94b00fac3bbbafeacf0403"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "http://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
