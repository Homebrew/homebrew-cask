cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "c364c901188590d453ab26cc901df3e5193d77312820c27ad28a514afb347d5b",
         intel: "997b9a04f066f660eb86f9e99d7007d6c5a9ea1a53ea22bed96a3e94a5c6aebe"

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
