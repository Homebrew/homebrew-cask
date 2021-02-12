cask "xnviewmp" do
  version "0.98.1"
  sha256 "fdbdaeb527fe8791bcfcef4e7e1d750c3ea70708c1a9c20e2be07444daa7755c"

  url "https://download.xnview.com/old_versions/XnViewMP-#{version.no_dots}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/"

  app "XnViewMP.app"
end
