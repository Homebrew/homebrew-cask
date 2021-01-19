cask "workflowy" do
  version "1.3.5-14230"
  sha256 "b155c95e1c89680661369b2ab3a98fee6d67b3563c887cadfd94f5eb176e9e96"

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
