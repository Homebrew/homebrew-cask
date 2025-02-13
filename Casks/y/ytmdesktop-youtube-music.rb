cask "ytmdesktop-youtube-music" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2.0.0"
    sha256 "c7a7734d295eaa3a8a7d42db2c2013618fd3fc06e9600d1c1485e1eec153b0cd"

    url "https://github.com/ytmdesktop/ytmdesktop/releases/download/v#{version}/YouTube-Music-Desktop-App-darwin-#{arch}-#{version}.zip",
        verified: "github.com/ytmdesktop/ytmdesktop/"
  end
  on_intel do
    version "2.0.7"
    sha256 "6e7bc359835aced020740b1cc529f316abc5217c8f5a0dd610282a04446cd1b7"

    url "https://github.com/ytmdesktop/ytmdesktop/releases/download/v#{version}/YouTube.Music.Desktop.App-darwin-#{arch}-#{version}.zip",
        verified: "github.com/ytmdesktop/ytmdesktop/"
  end

  name "YouTube Music Desktop App"
  desc "YouTube music client"
  homepage "https://ytmdesktop.app/"

  # Not every GitHub release provides a file for both architectures, so we check
  # multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/Desktop[._-]App[._-]darwin[._-](?:#{arch})[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :big_sur"

  app "YouTube Music Desktop App.app"

  zap trash: [
    "~/Library/Preferences/app.ytmd.plist",
    "~/Library/Saved Application State/app.ytmd.savedState",
  ]
end
