cask "xnviewmp" do
  version "0.98.4"
  sha256 :no_check

  url "https://download.xnview.com/XnViewMP-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "XnViewMP.app"
end
