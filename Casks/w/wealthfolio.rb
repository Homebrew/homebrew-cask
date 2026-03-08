cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "3869a98820e2bcdb6c1624e0e148a4284b076ea8da6dbb880a31ee7549d53e16",
         intel: "24e99acbd12539d38b6e3d7cb3c837762293c477d97054a2f6e81e6471389eaf"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg",
      verified: "github.com/afadil/wealthfolio/"
  name "Wealthfolio"
  desc "Investment portfolio tracker"
  homepage "https://wealthfolio.app/"

  livecheck do
    url "https://wealthfolio.app/releases/darwin/#{arch}/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
