cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.3.0"
  sha256 arm:   "3b1a04f796e9552189046f3362d7f7272e03d4013655817f35c4fbf36a1935f2",
         intel: "c75b43fb6cff229adcbf60384215ff2761bf5c231dabf639e7dad408940bd678"

  url "https://wireframesketcher.com/downloads/studio/dist/WireframeSketcher-#{version}-macosx.#{arch}.zip"
  name "WireframeSketcher"
  desc "Tool for creating wireframes, mockups and prototypes"
  homepage "https://wireframesketcher.com/"

  livecheck do
    url "https://wireframesketcher.com/updates/"
    regex(/Current\s+version\s+is\s+v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "WireframeSketcher.app"

  zap trash: [
    "~/Documents/WireframeSketcher",
    "~/Library/Preferences/com.wireframesketcher.studio.plist",
    "~/Library/Saved Application State/com.wireframesketcher.studio.savedState",
  ]
end
