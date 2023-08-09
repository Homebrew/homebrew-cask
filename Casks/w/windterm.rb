cask "windterm" do
  version "2.5.0"
  sha256 "19200cf35bdeb5c00753384aea8f0fa497d4c463d4ac53bb759c35fd8757419d"

  url "https://github.com/kingToolbox/WindTerm/releases/download/#{version}/WindTerm_#{version}_Mac_Portable_x86_64.dmg"
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
