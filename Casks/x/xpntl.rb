cask "xpntl" do
  version "0.1.0"
  sha256 "3c80aa5d519cfd5cc885cda33e85c7ee53d248bfeba48def77a3992f6964d4ac"

  url "https://dl.xpntl.dev/clients/macos/xpntl-#{version}.dmg"
  name "xpntl"
  desc "Coordination layer for human and AI engineering teams"
  homepage "https://xpntl.dev/"

  livecheck do
    url "https://dl.xpntl.dev/clients/version.json"
    strategy :json do |json|
      json.dig("macos", "version")
    end
  end

  depends_on macos: :sonoma

  app "xpntl.app"

  zap trash: [
    "~/Library/Caches/dev.xpntl.macos",
    "~/Library/Preferences/dev.xpntl.macos.plist",
    "~/Library/Saved Application State/dev.xpntl.macos.savedState",
  ]
end
