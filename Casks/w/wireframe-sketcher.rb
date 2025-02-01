cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.2.2"
  sha256 arm:   "b8e2ae79ec9f905dc8798f4791447ba71ea4febb476764f3dfb8db852b305f6a",
         intel: "379810702a6573ac791579862228c60985f115f1b64aa1277eacd2b8190e50fa"

  url "https://wireframesketcher.com/downloads/studio/dist/WireframeSketcher-#{version}-macosx.#{arch}.zip"
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
