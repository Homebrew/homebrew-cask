cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.2.0"
  sha256 arm:   "217f4f7402fac66d5fca50086e21c942051cd081f8809a03dc7f706d489822da",
         intel: "f8dc97eceb6d862c668c5a24eb539daa8dfca19bb79ae76d1115e9e33be6bfcb"

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
