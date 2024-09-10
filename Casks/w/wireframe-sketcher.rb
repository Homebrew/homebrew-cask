cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.2.0"
  sha256 arm:   "c861c41874cafe8d1c1e67633be7302263a7968b8ff9a8ff3b5e93d0ee4e8a5f",
         intel: "b1cceb2bcfa84e9681704a866154cd17218838a77de347783dff99656cf60aa1"

  url "https://wireframesketcher.com/downloads/studio/WireframeSketcher-#{version}-macosx.#{arch}.zip"
  name "WireframeSketcher"
  desc "Tool for creating wireframes, mockups and prototypes"
  homepage "https://wireframesketcher.com/"

  livecheck do
    url "https://wireframesketcher.com/updates/"
    regex(/version.*?(\d+(?:\.\d+)+)/i)
  end

  app "WireframeSketcher.app"

  zap trash: [
    "~/Documents/WireframeSketcher",
    "~/Library/Preferences/com.wireframesketcher.studio.plist",
    "~/Library/Saved Application State/com.wireframesketcher.studio.savedState",
  ]
end
