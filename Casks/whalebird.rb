cask "whalebird" do
  version "4.3.4"
  sha256 "ad6a313270cb09a4743376d4ad1fcdfa1490f2c2ace6e952906493e0eac4ad13"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  desc "Electron-based Mastodon and Pleroma client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
