cask "xnviewmp" do
  version "1.12.1"
  sha256 "fd9a6cc72512a434acda05e660871898e05c3233c5f0edc06ec1086789e9a647"

  url "https://download.xnview.com/old_versions/XnView_MP/XnView_MP-#{version}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resiser and more"
  homepage "https://www.xnview.com/en/xnviewmp/"

  livecheck do
    url "https://www.xnview.com/update.txt"
    regex(/\[XnViewMP\].*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: :ventura

  app "XnViewMP.app"

  uninstall quit: "com.xnview.XnView"

  zap trash: "~/Library/Saved Application State/com.xnview.XnView.savedState"
end
