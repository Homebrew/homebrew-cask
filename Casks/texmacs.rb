cask "texmacs" do
  arch arm: "-arm"

  version "2.1.2"
  sha256 arm:   "d0a5abf3dafba31073ffc3bbfbeff5300453954a54495affee8a16a2f9196587",
         intel: "db1f9a525554d76794e0339cc19fb4d45eee79bce5f7a176c8dc8b8667181b08"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}#{arch}.dmg"
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
