cask "zandronum" do
  version "3.2.1"
  sha256 "9067488a1d72847c87a29f6798b12b3d7b114b2654c3e8b7d7b96090393072a2"

  url "https://zandronum.com/downloads/zandronum#{version}-macosx.dmg"
  name "Zandronum"
  desc "Multiplayer oriented port for Doom and Doom II"
  homepage "https://zandronum.com/"

  livecheck do
    url "https://zandronum.com/downloads/"
    regex(/href=.*?zandronum[._-]?v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  disable! date: "2026-09-01", because: :unsigned

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

  caveats do
    requires_rosetta
    <<~EOS
      Install IWADs to ~/Library/Application Support/Zandronum/

      For more information, see:

        https://wiki.zandronum.com/Zandronum_and_IWAD_Files
    EOS
  end
end
