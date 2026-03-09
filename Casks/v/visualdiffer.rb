cask "visualdiffer" do
  version "2.1.6"
  sha256 "6ed2e8fd1f681fea434691449fab24b27ae4c28176cb9af329e94a9c60dcf935"

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
