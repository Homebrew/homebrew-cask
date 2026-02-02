cask "wireframe-sketcher" do
  arch arm: "arm64", intel: "x86_64"

  version "7.4.2"
  sha256 arm:   "0c5304b2e8bcbca7de7c705673bee0f7f204a6f0895e6b10016d107db95897f0",
         intel: "2a7d7863b4dfd88f94074b24082b00a192bd6f0d1c6b76afa5ce5f0e360ed9cc"

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
