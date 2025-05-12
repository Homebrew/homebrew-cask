cask "zandronum" do
  version "3.2"
  sha256 "38b2963f55e003d2680fcf007f5b4732ce9f5a465d241a6259d6d581013798bd"

  url "https://zandronum.com/downloads/zandronum#{version}-macosx.dmg"
  name "Zandronum"
  desc "Multiplayer oriented port for Doom and Doom II"
  homepage "https://zandronum.com/"

  livecheck do
    url "https://zandronum.com/downloads/"
    regex(/href=.*?zandronum[._-]?v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
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

  caveats do
    requires_rosetta
    <<~EOS
      Install IWADs to ~/Library/Application Support/Zandronum/

      For more information, see:

        https://wiki.zandronum.com/Zandronum_and_IWAD_Files
    EOS
  end
end
