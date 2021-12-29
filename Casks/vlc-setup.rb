cask "vlc-setup" do
  version "3.70"
  sha256 "61db4b11491cfffaa9c54184e99ae75dbf288a5f4ffff88a9f0f318c8b983d54"

  url "https://hobbyistsoftware.com/Downloads/VLCRemote/Versions/VLCSetup_#{version}.dmg"
  name "VLC Remote Setup Helper"
  desc "Set up VLC for VLC Remote"
  homepage "https://hobbyistsoftware.com/VLC"

  livecheck do
    url "https://hobbyistsoftware.com/vlc-versions"
    regex(/VLCSetup[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "VLC Setup.app"

  zap trash: [
    "~/Library/Application Support/com.HobbyistSoftware.VLCSetup",
    "~/Library/Caches/com.HobbyistSoftware.VLCSetup",
    "~/Library/Logs/VLC Setup",
    "~/Library/Preferences/com.HobbyistSoftware.VLCSetup.plist",
    "~/Library/Saved Application State/com.HobbyistSoftware.VLCSetup.savedState",
  ]
end
