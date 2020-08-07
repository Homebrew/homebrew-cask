cask "teledrive" do
  version "0.9.5"
  sha256 "8be71fb09749634603ed8c076d852a14ec39146bda9faae08c8d50eece5a5b4b"

  # github.com/KhushrajRathod/TeleDrive/ was verified as official when first introduced to the cask
  url "https://github.com/KhushrajRathod/TeleDrive/releases/download/v#{version}/TeleDrive-#{version}.dmg"
  appcast "https://github.com/KhushrajRathod/TeleDrive/releases.atom"
  name "TeleDrive"
  homepage "https://github.com/KhushrajRathod/TeleDrive/"
  
  auto_updates true
  
  app "TeleDrive.app"
  
  zap trash: [
    "~/Library/Caches/me.khushrajrathod.teledrive*",
    "~/Library/Logs/DiagnosticReports/TeleDrive*",
    "~/Library/Logs/TeleDrive",
    "~/Library/Preferences/ByHost/me.khushrajrathod.teledrive*",
    "~/Library/Preferences/me.khushrajrathod.teledrive.plist",
    "~/Library/Preferences/com.electron.teledrive.plist",
    "~/Library/Saved Application State/me.khushrajrathod.teledrive.savedState",
  ]
end
