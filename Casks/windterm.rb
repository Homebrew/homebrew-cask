cask "windterm" do
  version "2.4.0"
  sha256 "0d7a0b30c63d24198c0d3c1e89a66f51a25fa6fe4dcf9f6a1b7a2058d61971c2"

  url "https://github.com/kingToolbox/WindTerm/releases/download/#{version}/WindTerm_2.4.1_Mac_Portable_x86_64.dmg"
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
