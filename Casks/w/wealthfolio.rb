cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "7054d8655e73d6286bcf6d5fb9b05f790e5bfc3977397ef0d4ba4318760d2137",
         intel: "6993ef42974be6f1faa5942cc82c67f2fe71c8373f8a2abe656a3a6fa9ac4a26"

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
