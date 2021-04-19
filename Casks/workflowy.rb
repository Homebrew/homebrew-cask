cask "workflowy" do
  version "1.3.5-16962"
  sha256 "09a89066907eb869ebaaca5b6c6af6c8417f0472ee8bf0d75dbdf046cf17cc3f"

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
