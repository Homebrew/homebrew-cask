cask "xnviewmp" do
  version "1.12.2"
  sha256 "c0d5626d5f3edf63c9b42e9e0f852d248960314c52d580ff4644dbe8c5ae0fa1"

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
