cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "bd1f8315c1d7d5fd1d6c5773aa021897ef9e34debe60271479f7c50d6041a530",
         intel: "82c56710b030179cee5dcc0505df4d6e9c6c942b7bf0efc1f90410433681a863"

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
