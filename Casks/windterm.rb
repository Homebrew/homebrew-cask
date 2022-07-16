cask "windterm" do
  version "2.4.1"
  sha256 "8dcf18887b4c2b43c39c6c7b32ca093df986f9192334021891488b5a2256b903"

  url "https://github.com/kingToolbox/WindTerm/releases/download/2.4.0/WindTerm_#{version}_Mac_Portable_x86_64.dmg"
  name "WindTerm"
  desc "SSH/SFTP/Shell/Telnet/Serial terminal"
  homepage "https://github.com/kingToolbox/WindTerm"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "WindTerm.app"

  zap trash: [
    "~/Library/Preferences/KingToolbox.WindTerm.plist",
    "~/Library/Saved Application State/KingToolbox.WindTerm.savedState",
  ]
end
