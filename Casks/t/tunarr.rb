cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.15"
  sha256 arm:   "6f8e8ded3ff452bdee769d881673eddcbd9fe8ec43d9d33c8e5683a8b7872800",
         intel: "f9f24011b562d4b328ca1ab8968041449165d725876fcf53705085b2cb11ab88"

  url "https://github.com/chrisbenincasa/tunarr/releases/download/v#{version}/Tunarr-v#{version}-macos-#{arch}.dmg"
  name "tunarr"
  desc "Create your own live TV channels from media on Plex, Jellyfin, Emby"
  homepage "https://tunarr.com/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Tunarr[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg$/i)
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

  depends_on macos: :ventura

  app "Tunarr.app"

  zap trash: [
    "~/.cache/tunarr",
    "~/Library/Preferences/tunarr",
  ]
end
