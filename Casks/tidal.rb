cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.33.2"
  sha256 arm:   "8d9e854dbe47a6587c4e9b8854c38a35c4bc1e8801629d265a7f7b102f101e76",
         intel: "0855257b2bc4e1d341503eefd87c3190abc5e0294d11bf9cd5fa9171e64bbf9e"

  url "https://download.tidal.com/desktop/mac/TIDAL.#{arch}.#{version}.zip"
  name "TIDAL"
  desc "Music streaming service with high fidelity sound and hi-def video quality"
  homepage "https://tidal.com/"

  livecheck do
    url "https://download.tidal.com/desktop/mac/update-#{arch}.json"
    strategy :page_match do |page|
      JSON.parse(page)["currentRelease"]
    end
  end

  auto_updates true

  app "TIDAL.app"

  zap trash: [
    "~/Library/Application Support/TIDAL",
    "~/Library/Caches/com.tidal.desktop",
    "~/Library/Caches/com.tidal.desktop.ShipIt",
    "~/Library/Logs/TIDAL",
    "~/Library/Preferences/com.tidal.*",
    "~/Library/Saved Application State/com.tidal.desktop.savedState",
  ]
end
