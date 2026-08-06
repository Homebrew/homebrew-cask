cask "workflowy" do
  version "4.3.2608061204"
  sha256 "1232f4ee399ad832c843735aba2cdbe10740175dd639649b099a298605e8084a"

  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip",
      verified: "github.com/workflowy/desktop/"
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
