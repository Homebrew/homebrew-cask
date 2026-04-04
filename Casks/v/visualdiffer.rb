cask "visualdiffer" do
  version "2.1.8"
  sha256 "0c0a520d243ed54377ecd3b6dc6738de5f3778af72fe6600893e6e63d0c3c220"

  url "https://github.com/visualdiffer/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip",
      verified: "github.com/visualdiffer/visualdiffer/"
  name "VisualDiffer"
  desc "Visually compare folders and files"
  homepage "https://visualdiffer.com/"

  livecheck do
    url "https://app.visualdiffer.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "VisualDiffer.app"

  zap trash: [
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
