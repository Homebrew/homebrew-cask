cask "yesplaymusic" do
  arch arm: "arm64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "bf7564f451f0e25217015c0f2a83e1385f7a407a42daf0be8d8d992c471160d8",
         intel: "6e1d9a9dfe36bb9e27b408ee9574d8e7ec159dbcb5967a47a8d8ad55cb5f4c65"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version.hyphens_to_dots.major_minor_patch}-#{arch}.dmg"
  name "YesPlayMusic"
  desc "Third-party NetEase cloud player"
  homepage "https://github.com/qier222/YesPlayMusic"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:[.-]\d+)+)/YesPlayMusic(?:[._-]mac)?[._-]v?\d+(?:[.-]\d+)+[._-]#{arch}\.dmg}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
