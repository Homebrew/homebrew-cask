cask "xnviewmp" do
  version "0.98.0"
  sha256 "706b8e0dfea9efafc1b14413797ab594626be79a1cf12efe960e0862ed7116c0"

  url "https://download.xnview.com/old_versions/XnViewMP-#{version.no_dots}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/"

  app "XnViewMP.app"
end
