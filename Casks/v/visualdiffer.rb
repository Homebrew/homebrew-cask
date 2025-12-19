cask "visualdiffer" do
  version "2.1.1"
  sha256 "814a72a1f8fc83c70216522af034cca464cb6e272e2a29860c700816e726dce7"

  url "https://github.com/visualdiffer/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip",
      verified: "github.com/visualdiffer/visualdiffer/"
  name "VisualDiffer"
  desc "Visual file and folder comparison tool for macOS"
  homepage "https://github.com/visualdiffer/visualdiffer"

  app "VisualDiffer.app"

  zap trash: [
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end