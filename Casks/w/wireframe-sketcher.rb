cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.4.0"
  sha256 arm:   "e1a9a0cbe60ff5831b931b1e67a1af21965dbcb737f1d2abeddae7121e819858",
         intel: "645be5411c4eb074dc8556516e0ddb7f18f389ad1bef72e0393faa718c5f45f1"

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
