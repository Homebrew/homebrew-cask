cask "yesplaymusic" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8-2"
  sha256 arm:   "15a7ae98d9a43d0623f407b65f0fde294b9ecd1e1b11d9e2f258be35153d8b59",
         intel: "5079c47685d3fef02b4912973e57c3614514303c85da69c3b262448c0096dafa"

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
