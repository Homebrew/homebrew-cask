cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.8"
  sha256 arm:   "943983a2eb56e7137010ab0f39af80022aae1d30140f873fc614306032786f9b",
         intel: "14d099b70238965ec9d5aa1d1c040b2845c1ad30fe3a4f3c13df3542e6511521"

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
