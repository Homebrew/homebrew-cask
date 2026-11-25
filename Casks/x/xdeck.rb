cask "xdeck" do
  version "3.3"
  sha256 "ced844a43e222fdf858e2130bd832c44c7b8b69a28ec652bc185c9d43936a3ad"

  url "https://github.com/morishin/XDeck/releases/download/#{version}/XDeck-#{version}.zip"
  name "XDeck"
  desc "TweetDeck-style X/Twitter client"
  homepage "https://github.com/morishin/XDeck"

  depends_on macos: :ventura

  app "XDeck.app"

  zap trash: "~/Library/Containers/me.morishin.XDeck"
end
