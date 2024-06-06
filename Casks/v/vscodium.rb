cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  version "1.90.0.24158"
  sha256 arm:   "74928ef44ec2c8e30ec06b0fc426d6083205962a4f80ecfd453aa2fa6c9cbc56",
         intel: "24a358e216797729e19bcb5b72586216fbced558dbf299757f3a387f1daf10ad"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release. NOTE: We should be
  # able to use `strategy :github_latest` when subsequent releases provide
  # files for macOS again.
  livecheck do
    url :url
    regex(/^VScodium[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)$/i)
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

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

  zap trash: [
    "~/.vscode-oss",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vscodium.sfl*",
    "~/Library/Application Support/VSCodium",
    "~/Library/Caches/com.vscodium",
    "~/Library/Caches/com.vscodium.ShipIt",
    "~/Library/HTTPStorages/com.vscodium",
    "~/Library/Preferences/com.vscodium*.plist",
    "~/Library/Saved Application State/com.vscodium.savedState",
  ]
end
