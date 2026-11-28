cask "visualdiffer" do
  version "2.2.3"
  sha256 "a7fbd0d59b4c46b58e21b2b6a20c44a966dc6ca9fa4118855331cc2664dad86a"

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
    "~/Library/Application Scripts/com.visualdiffer",
    "~/Library/Application Scripts/MLU48HP7P3.com.appgroup.visualdiffer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.visualdiffer.sfl*",
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Containers/com.visualdiffer",
    "~/Library/Group Containers/MLU48HP7P3.com.appgroup.visualdiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
