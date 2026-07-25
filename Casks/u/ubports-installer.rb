cask "ubports-installer" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.11.1"
    sha256 "18f9bdfe73a56f37cd90a43c0978ab98840ae0f2e5f27d8bbaa396d037fc63fe"
  end
  on_intel do
    version "0.11.2"
    sha256 "cd5532fff5c2a35e04f55b6b0ad03918404bfbaa1065e54a87cf9fb69609807b"
  end

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}_mac_#{arch}.dmg",
      verified: "github.com/ubports/ubports-installer/"
  name "ubports installer"
  desc "Application to install ubports on mobile devices"
  homepage "https://ubports.com/"

  livecheck do
    url :url
    regex(/^ubports-installer[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg$/i)
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "ubports-installer.app"

  zap trash: [
    "~/Library/Application Support/ubports-installer",
    "~/Library/Preferences/com.ubports.installer.plist",
    "~/Library/Saved Application State/com.ubports.installer.savedState",
  ]
end
