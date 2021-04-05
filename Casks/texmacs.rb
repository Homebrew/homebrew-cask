cask "texmacs" do
  version "1.99.19"
  sha256 "dd1b4dab08d80b3695c7af2b2e35ca31b0f6ed48cf0e81e7cf66245df584a3ca"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "http://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  app "TeXmacs.app"

  zap trash: [
    "~/.TeXmacs",
    "~/Library/Preferences/org.texmacs.TeXmacs.plist",
    "~/Library/Saved Application State/org.texmacs.TeXmacs.savedState",
  ]
end
