cask "xnviewmp" do
  version "1.10.5"
  sha256 "9972b02570b93b33d5b26c8aad8fcaaa947f9679762c768e762f0a44e6aa8ef4"

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
