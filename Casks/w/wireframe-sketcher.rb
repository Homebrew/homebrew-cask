cask "wireframe-sketcher" do
  version "7.0.0"
  sha256 :no_check

  url "https://wireframesketcher.com/downloads/WireframeSketcher-latest-macosx.zip"
  name "WireframeSketcher"
  desc "Tool for creating wireframes, mockups and prototypes"
  homepage "https://wireframesketcher.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "WireframeSketcher.app"

  zap trash: [
    "~/Documents/WireframeSketcher",
    "~/Library/Preferences/com.wireframesketcher.studio.plist",
    "~/Library/Saved Application State/com.wireframesketcher.studio.savedState",
  ]
end
