cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.3.1"
  sha256 arm:   "f97284fc07ef26c82450ce2a8883cc762719cb7a7eb89b696dcbc2545d3332e4",
         intel: "234093c3634b501214f22aa4d888185d4f0d03af5d5e2e0e0004c39bf13f4b02"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
