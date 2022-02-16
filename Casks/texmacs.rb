cask "texmacs" do
  version "2.1.1"
  sha256 "814a25d314d5fb175fae72c8606ce22c8894d9d25c545f63e11bd9b7086f31f1"

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
