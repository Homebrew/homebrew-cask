cask "zandronum" do
  version "3.0"
  sha256 "9e50fee5eea4c3eda08ea6433f1a5bc8edb60ea44be634511f06109357686616"

  url "https://zandronum.com/downloads/zandronum#{version}-macosx.dmg"
  name "Zandronum"
  desc "Multiplayer oriented port for Doom and Doom II"
  homepage "https://zandronum.com/"

  livecheck do
    url "https://zandronum.com/downloads/"
    regex(/href=.*?zandronum[._-]?v?(\d+(?:\.\d+)+)-macosx\.dmg/i)
  end

  app "Zandronum.app"
  app "Doomseeker.app"

  zap trash: [
    "~/Library/Application Support/Doomseeker",
    "~/Library/Application Support/Zandronum",
    "~/Library/Preferences/Doomseeker",
    "~/Library/Preferences/org.doomseeker.app.plist",
    "~/Library/Preferences/zandronum.ini",
    "~/Library/Saved Application State/org.doomseeker.app.savedState",
  ]

  caveats <<~EOS
    Install IWADs to ~/Library/Application Support/Zandronum/

    For more information, see: https://wiki.zandronum.com/Zandronum_and_IWAD_Files
  EOS
end
