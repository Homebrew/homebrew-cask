cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "1.20.0"
  sha256  arm:   "123e77048f605e719cc6a1ec6ea76014b29b7fd96fe4574e04295d9d0594dbf7",
          intel: "b776009ddc9138e25cda177e992044ce716e362e0ad1739a5f1f7c388c51fa46"

  url "https://github.com/th-ch/youtube-music/releases/download/v#{version}/YouTube-Music-#{version}#{arch}.dmg",
      verified: "github.com/th-ch/youtube-music/"
  name "YouTube Music"
  desc "Desktop App bundled with custom plugins and built-in ad blocker/downloader"
  homepage "https://th-ch.github.io/youtube-music/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Application Support/YouTube Music",
    "~/Library/Preferences/com.github.th-ch.youtube-music.plist",
    "~/Library/Saved Application State/com.github.th-ch.youtube-music.savedState",
  ]
end
