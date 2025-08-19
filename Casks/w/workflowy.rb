cask "workflowy" do
  version "4.3.2508191705"
  sha256 "69a34deccdc80de3fbc05396b59efe3d464a0b9862d691328f11f16c4c03ff7c"

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
  depends_on macos: ">= :big_sur"

  app "WorkFlowy.app"

  zap trash: [
    "~/Library/Application Support/WorkFlowy",
    "~/Library/Preferences/com.workflowy.desktop.plist",
    "~/Library/Saved Application State/com.workflowy.desktop.savedState",
  ]
end
