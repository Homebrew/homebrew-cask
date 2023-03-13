cask "xnviewmp" do
  version "1.4.3"
  sha256 :no_check

  url "https://download.xnview.com/XnViewMP-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/en/xnviewmp/"

  livecheck do
    url :homepage
    regex(/>XnView\sMP\sv?(\d+(?:\.\d+)+)[\s<]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "XnViewMP.app"

  zap trash: "~/Library/Saved Application State/com.xnview.XnView.savedState"
end
