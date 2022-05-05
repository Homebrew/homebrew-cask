cask "tad" do
  version "0.10.0"
  sha256 "1ffb23c967e3eede6dc660e015baea3d81ec29ab5b554e7fd0b9eb4e288eb721"

  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/Tad-#{version}.dmg",
      verified: "github.com/antonycourtney/tad/"
  name "Tad"
  desc "Desktop application for viewing and analyzing tabular data"
  homepage "https://www.tadviewer.com/"

  app "Tad.app"
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: "tad"

  zap trash: [
    "~/Library/Application Support/Tad",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.antonycourtney.tad.sfl*",
    "~/Library/Logs/Tad",
    "~/Library/Preferences/com.antonycourtney.tad.plist",
    "~/Library/Saved Application State/com.antonycourtney.tad.savedState",
  ]
end
