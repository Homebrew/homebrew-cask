cask "xnviewmp" do
  version "0.98.2"
  sha256 "8afcc144d7c3da35f5e3c0fe42f61a33e69c0fad41308dde4b25dc900c7452ce"

  url "https://download.xnview.com/old_versions/XnViewMP-#{version.no_dots}-mac.dmg"
  name "XnViewMP"
  desc "Photo viewer, image manager, image resizer and more"
  homepage "https://www.xnview.com/"

  app "XnViewMP.app"
end
