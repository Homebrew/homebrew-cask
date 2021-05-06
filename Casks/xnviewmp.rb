cask "xnviewmp" do
  version "0.98.3"
  sha256 "2102a1a65219ec2de2ce63c0f8248b4c32cda0304e8abbaacd5052deaea62583"

  url "https://download.xnview.com/old_versions/XnViewMP-#{version.no_dots}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/"

  app "XnViewMP.app"
end
