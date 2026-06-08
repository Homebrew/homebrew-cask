cask "xnviewmp" do
  version "1.11.2"
  sha256 "b97ca9a21b119c3eb2580e6157c04c14d14d92636640d85a42829211687d2ff4"

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
