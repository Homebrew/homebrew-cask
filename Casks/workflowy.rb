cask "workflowy" do
  version "1.3.5-16569"
  sha256 "1192f41c23710535751da2e9c1e1f80b4de82f44ea1ada7d019054bc9f3bd7f8"

  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip",
      verified: "github.com/workflowy/desktop/"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*-\d+)$/i)
  end

  auto_updates true

  app "WorkFlowy.app"

  zap trash: [
    "~/Library/Application Support/WorkFlowy",
    "~/Library/Preferences/com.workflowy.desktop.plist",
    "~/Library/Saved Application State/com.workflowy.desktop.savedState",
  ]
end
