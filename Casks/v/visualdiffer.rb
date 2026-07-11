cask "visualdiffer" do
  version "2.1.18"
  sha256 "5c63f71aca6fcdf8588978e9f7051bfc7137a67dd1e60a44c7f2c57e645d531e"

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
  depends_on macos: :ventura

  app "VisualDiffer.app"

  zap trash: [
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
