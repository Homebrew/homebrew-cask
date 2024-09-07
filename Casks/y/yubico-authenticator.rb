cask "yubico-authenticator" do
  version "7.0.0"
  sha256 "ea9e07d5f3ada7d75c1555de42b93a6d91ccc4dab0460520a3ddd9ac7be80bf1"

  url "https://github.com/Yubico/yubioath-flutter/releases/download/#{version}/yubico-authenticator-#{version}-mac.dmg",
      verified: "github.com/Yubico/yubioath-flutter/releases/download/"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  # Releases sometimes don't have a macOS build, so we check multiple
  # recent releases instead of only the "latest" release. NOTE: We should be
  # able to use `strategy :github_latest` when subsequent releases provide
  # files for macOS again.
  livecheck do
    url :url
    regex(/^yubico[._-]authenticator[._-]v?(\d+(?:\.\d+)+)[._-]mac\.(?:dmg|pkg)$/i)
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

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.authenticator",
    "~/Library/Containers/com.yubico.authenticator",
  ]
end
