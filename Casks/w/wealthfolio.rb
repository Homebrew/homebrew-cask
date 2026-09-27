cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "9165c02d127ff07b439b0fac19628735b0502cab08e0c0267ca0c39bfc1edca2",
         intel: "3f334947527ae4d77dc926dda5c222328a1e208a2105e8c76789f511971e9989"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg"
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
  depends_on macos: :monterey

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
