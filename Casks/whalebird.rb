cask "whalebird" do
  version "4.4.1"
  sha256 "493570b0f9c83f174cd1e84e688c5b3decd17d504402444092446bbded03ae04"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
