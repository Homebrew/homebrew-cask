cask "x2goclient" do
  version "4.1.2.2"
  sha256 :no_check

  url "https://code.x2go.org/releases/X2GoClient_latest_macosx_10_13.dmg"
  name "X2Go Client"
  desc "Remote desktop software"
  homepage "https://wiki.x2go.org/doku.php"

  livecheck do
    url "https://wiki.x2go.org/doku.php/doc:release-notes-mswin"
    regex(/x2goclient[._-]v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
