cask "xnviewmp" do
  version "0.99.1"
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

  def caveats
    "XnViewMP is not signed, so you will see 'can't be opened because it is from an unidentified developer' issue.\n" +
    "You need to right-click-option-open it to disable it.\n" +
    "Or at your own risk, use `brew reinstall xnviewmp --cask --no-quarantine`."
  end
end
