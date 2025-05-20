cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "95a092add212c637c26b225e46d5471460d5dc0420d5acd3343dce40a0845bb7",
         intel: "a261ad2a16e0141e4a0aae8504f07576b929630ec14c3ddb7fc9c481bd175d2f"

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
