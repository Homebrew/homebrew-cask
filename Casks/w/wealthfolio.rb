cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "209a23bf4a1267e3a14c3ad920e91a762f6e264a4670c9eb20d2f6ad20f69eaf",
         intel: "5b2fe701a764b80b0fc068b54a3ca23838f6fda063f1847a18498e490a179aaf"

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
