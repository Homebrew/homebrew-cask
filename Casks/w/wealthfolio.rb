cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "ba2f2e505c5d97c668f98ba52ac6bf61c748991c23a930508d541ced77332df2",
         intel: "d62eb3a6a4d34190dd44c6e99ade8cdde7398d94f4d48479d4f5bd9407c885a1"

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
