cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.15"
  sha256 arm:   "74d2f132d302aa5c868e454021f150f6241feb7df81b8434bc1acda0a56482fc",
         intel: "19d710c5b0ab99e7ac7392de12a57a354f34c4edf075831a9e9d16fc323d34ec"

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
