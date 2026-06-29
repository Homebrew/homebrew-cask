cask "xnviewmp" do
  version "1.11.5"
  sha256 "675143eb3784c9fbbe9dbb290a6edb8f3b994e978ed99d3e73fd26a248b17659"

  url "https://download.xnview.com/old_versions/XnView_MP/XnView_MP-#{version}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resiser and more"
  homepage "https://www.xnview.com/en/xnviewmp/"

  livecheck do
    url "https://www.xnview.com/update.txt"
    regex(/\[XnViewMP\].*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  app "XnViewMP.app"

  zap trash: "~/Library/Saved Application State/com.xnview.XnView.savedState"
end
