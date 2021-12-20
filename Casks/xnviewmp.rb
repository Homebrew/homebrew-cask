cask "xnviewmp" do
  version "0.99.6"
  sha256 :no_check

  url "https://download.xnview.com/XnViewMP-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/en/xnviewmp/"

  livecheck do
    url :homepage
    regex(/>XnView\sMP\sv?(\d+(?:\.\d+)+)[\s<]/i)
  end

  app "XnViewMP.app"
end
