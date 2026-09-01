cask "xnviewmp" do
  version "1.11.6"
  sha256 "1da40a995db18edf5e0a9904ffb1e0e29306f8ad6bce36853f1830f5ef084b04"

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
