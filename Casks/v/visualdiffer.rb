cask "visualdiffer" do
  version "2.2.0"
  sha256 "c7f6bd36d2b469a0ed0184c97f0b338e506842e19c3372d9fa8823c5e70754dc"

  url "https://github.com/visualdiffer/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip"
  name "VisualDiffer"
  desc "Visually compare folders and files"
  homepage "https://visualdiffer.com/"

  livecheck do
    url "https://app.visualdiffer.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "VisualDiffer.app"

  zap trash: [
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
