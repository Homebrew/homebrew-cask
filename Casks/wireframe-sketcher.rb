cask "wireframe-sketcher" do
  version "6.6.0"
  sha256 :no_check

  url "https://wireframesketcher.com/downloads/WireframeSketcher-latest-macosx.zip"
  name "WireframeSketcher"
  homepage "https://wireframesketcher.com/"
  desc "Tool for creating wireframes, mockups and prototypes"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "WireframeSketcher.app"
end
