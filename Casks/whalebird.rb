cask "whalebird" do
  version "4.3.2"
  sha256 "c430913330b0259589712f50d68f83f745e4269e17bea6d3087432dda0c68e6d"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  desc "Electron-based Mastodon and Pleroma client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
