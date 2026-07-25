cask "xdeck" do
  version "3.2"
  sha256 "db8bd49328c72ef4e4cb91fa2b0f9c1c2660c572c89dfc23492f8601b2c16e52"

  url "https://github.com/morishin/XDeck/releases/download/#{version}/XDeck-#{version}.zip"
  name "XDeck"
  desc "TweetDeck-style X/Twitter client"
  homepage "https://github.com/morishin/XDeck"

  depends_on macos: :ventura

  app "XDeck.app"

  zap trash: "~/Library/Containers/me.morishin.XDeck"
end
