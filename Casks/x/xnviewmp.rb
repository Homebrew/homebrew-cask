cask "xnviewmp" do
  version "1.12.3"
  sha256 "942babe9035e4b186e06b72881589228a4d766adde208343ce7e381e16139c82"

  url "https://download.xnview.com/old_versions/XnView_MP/XnView_MP-#{version}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resiser and more"
  homepage "https://www.xnview.com/en/xnviewmp/"

  livecheck do
    url "https://www.xnview.com/update.txt"
    regex(/\[XnViewMP\].*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: :monterey

  app "XnViewMP.app"

  uninstall quit: "com.xnview.XnView"

  zap trash: "~/Library/Saved Application State/com.xnview.XnView.savedState"
end
