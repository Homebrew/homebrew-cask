cask "xdeck" do
  version "3.0"
  sha256 "b3c0d1f264f9bac1dc1be6d9609f3abf66b6f2ea61831f3b0b6884152b07845f"

  url "https://github.com/morishin/XDeck/releases/download/#{version}/XDeck-#{version}.zip"
  name "XDeck"
  desc "TweetDeck-style X/Twitter client"
  homepage "https://github.com/morishin/XDeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "XDeck.app"
end
