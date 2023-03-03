cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.0.0"
  sha256 arm:   "2737f202880bc91c68e9094619d75b4d7c7d6f38e38b4d95af6ac9a46d3bfb96",
         intel: "0932f6f2e64528b2800a5358f583f07b808836c8d3034d3745bc9b1220f3c75e"

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
