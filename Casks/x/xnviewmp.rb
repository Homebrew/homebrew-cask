cask "xnviewmp" do
  version "1.11.7"
  sha256 "58b88d4f9b226d8a3c0d055ea98d6ce687c2bbb4fe9a1f67fa9d7e373be1d370"

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

  uninstall quit: "com.xnview.XnView"

  zap trash: "~/Library/Saved Application State/com.xnview.XnView.savedState"
end
