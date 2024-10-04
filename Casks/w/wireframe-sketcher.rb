cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.2.1"
  sha256 arm:   "3a2571d715329bd109e33fb104122e974c9b2632358f8dd33a1ba269303afa02",
         intel: "3cade723fc32284d0ccc728c06baa2834619346909a602d4e264d1408705c0ce"

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
