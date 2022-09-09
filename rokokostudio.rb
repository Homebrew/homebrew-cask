cask "rokokostudio" do
  version "1.20"
  sha256 :no_check

  url "https://downloads.rokoko.com/studio-mac"
  name "Rokoko Studio"
  desc "Real-time 3D character animation software for all creators"
  homepage "https://rokoko.com/"

  app "Rokoko Studio.app"

  zap trash: [
    "/Applications/Rokoko Motion Library",
    "~/Library/Application Support/unity.Rokoko Electronics.Smartsuit-studio",
    "~/Library/Logs/Rokoko Electronics/Smartsuit-studio",
    "~/Library/Preferences/unity.Rokoko Electronics.Smartsuit-studio.plist",
    "~/Library/Saved Application State/unity.Rokoko Electronics.Smartsuit-studio.savedState",
  ]
end
