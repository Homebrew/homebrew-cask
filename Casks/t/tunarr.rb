cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "f66580a9c7852b5df109cdaf59e0dcac17a4c777a7e785b5189eac708efaa9aa",
         intel: "a2c59960161118eeb5b5b0d73255c74f1c79344920113d05ac73bb02451b72ea"

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
