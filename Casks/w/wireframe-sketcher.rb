cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.1.1"
  sha256 arm:   "9bf23a643558a5a0b2ed1e9cd265ab7227cd31b2ae1ffb7e5c26c5806b2995ec",
         intel: "a951781e8cf1de233296a663d59151cfad7ffae1b333ea9e9891c4474039a24f"

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
