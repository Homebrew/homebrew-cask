cask "tad" do
  version "0.10.0"
  sha256 "d7f8139004d5727fddae1899bb668f3b5b619e66ce3978ef4c00edbc418c0857"

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
