cask "x2goclient" do
  version "4.1.2.2"
  sha256 :no_check

  on_sierra :or_older do
    url "https://code.x2go.org/releases/X2GoClient_latest_macosx_10_11.dmg"
  end
  on_high_sierra :or_newer do
    url "https://code.x2go.org/releases/X2GoClient_latest_macosx_10_13.dmg"
  end

  name "X2Go Client"
  desc "Remote desktop software"
  homepage "https://wiki.x2go.org/doku.php"

  livecheck do
    url "https://wiki.x2go.org/doku.php/doc:release-notes-mswin"
    regex(/x2goclient[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "x2goclient.app"

  zap trash: [
    "~/.x2go",
    "~/.x2goclient",
    "~/Library/Application Support/CrashReporter/x2goclient_*.plist",
    "~/Library/Preferences/x2goclient.plist",
  ]

  caveats do
    requires_rosetta
  end
end
