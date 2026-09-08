cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "e16156d3b5a0b978c79f7746ffd02a7b996870a603cea4fdca8956733fddccc8",
         intel: "65b24df826e558a955102c0406cc47bdabd066398358e1b68af9a0fc5e8f5500"

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
