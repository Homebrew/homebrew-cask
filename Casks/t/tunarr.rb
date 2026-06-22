cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "d32b16225f81a46583762b5915430c5d1ebc5def2689d44f9bb66ab5d4dbdfe6",
         intel: "b95ac24227abc000476d2a77a88a9cacff49bca3895b928c568a6fd034a22f8c"

  url "https://github.com/chrisbenincasa/tunarr/releases/download/v#{version}/Tunarr-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/chrisbenincasa/tunarr/"
  name "tunarr"
  desc "Create your own live TV channels from media on Plex, Jellyfin, Emby"
  homepage "https://tunarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tunarr.app"

  zap trash: [
    "~/.cache/tunarr/",
    "~/Library/Preferences/tunarr/",
  ]
end
