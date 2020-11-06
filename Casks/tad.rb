cask "tad" do
  version "0.9.0"
  sha256 "55cd0d6557418ba4e072ad4fbcb1619f0df05842c6567ed4cbee37aa3c1d6f9b"

  # github.com/antonycourtney/tad/ was verified as official when first introduced to the cask
  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/Tad-#{version}.dmg"
  appcast "https://github.com/antonycourtney/tad/releases.atom"
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
