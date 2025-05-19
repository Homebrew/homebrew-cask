cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "98a2d4a8c639df396112a9a80d8430be91cbc972428f3e40dc8ab958765efa47",
         intel: "ba25696a05844fc7af6747f8e7950534b8eafacca3fa9fb64badfe8db87de97e"

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
  depends_on macos: ">= :high_sierra"

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
