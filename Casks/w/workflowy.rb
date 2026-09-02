cask "workflowy" do
  version "4.3.2609020650"
  sha256 "be1c9dc8efacdef36e3c68f3a89ae00a86ab52b7ab2ddaf6618ccbd8a3be00db"

  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "WorkFlowy.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.workflowy.desktop.sfl*",
    "~/Library/Application Support/WorkFlowy",
    "~/Library/Logs/WorkFlowy",
    "~/Library/Preferences/com.workflowy.desktop.plist",
    "~/Library/Saved Application State/com.workflowy.desktop.savedState",
  ]
end
