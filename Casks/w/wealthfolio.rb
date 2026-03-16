cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "14e6bb8fca55214f4f20076ac280ec6f79f4bb275a6b4d6fcfbf76c454bb3fa7",
         intel: "53695478926472f21ac62a0a837762b3bf1ebf13ccc2e95c145875817237aaf7"

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
