cask "workflowy" do
  version "4.0.2410291153"
  sha256 "d818cc3fc6c4850512333ad87edde4d36218d7ac43a704d1736fde2f8a1b3b97"

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

  app "WorkFlowy.app"

  zap trash: [
    "~/Library/Application Support/WorkFlowy",
    "~/Library/Preferences/com.workflowy.desktop.plist",
    "~/Library/Saved Application State/com.workflowy.desktop.savedState",
  ]
end
