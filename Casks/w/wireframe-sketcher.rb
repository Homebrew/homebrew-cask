cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.4.1"
  sha256 arm:   "b126441da75043dd7f72bc36622825109be5222727e9074801f9f8512245eca4",
         intel: "9766163748fb0f15c81b9aa83ff9a2d54cd736b69e3ed50cb9a7e0dec3a2f453"

  url "https://wireframesketcher.com/downloads/studio/dist/WireframeSketcher-#{version}-macosx.#{arch}.zip"
  name "WireframeSketcher"
  desc "Tool for creating wireframes, mockups and prototypes"
  homepage "https://wireframesketcher.com/"

  livecheck do
    url "https://wireframesketcher.com/updates/"
    regex(/Current\s+version\s+is\s+v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "WireframeSketcher.app"

  zap trash: [
    "~/Documents/WireframeSketcher",
    "~/Library/Preferences/com.wireframesketcher.studio.plist",
    "~/Library/Saved Application State/com.wireframesketcher.studio.savedState",
  ]
end
