cask "zight" do
  version "6.7,2457"
  sha256 "187f5ef38c7981034c4f9c2751672f821994d38768f196e1d2860cce6dda5962"

  url "https://downloads.getcloudapp.com/mac/Zight-#{version.csv.first}.#{version.csv.last}.zip",
      verified: "downloads.getcloudapp.com"
  name "Zight"
  desc "Visual communication platform"
  homepage "https://zight.com/"

  livecheck do
    url "https://share.getcloudapp.com/api/v4/clients/mac/current-version"
    strategy :sparkle do |item|
      match = item.url.match(%r{/Zight[._-](\d+(?:\.\d+)+)\.(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Zight.app"

  zap trash: [
    "~/Library/Application Scripts/com.linebreak.CloudAppMacOSX.Share",
    "~/Library/Application Support/com.linebreak.CloudAppMacOSX",
    "~/Library/Caches/com.linebreak.CloudAppMacOSX",
    "~/Library/Containers/com.linebreak.CloudAppMacOSX-LaunchAtLoginHelper",
    "~/Library/Containers/com.linebreak.CloudAppMacOSX.Share",
    "~/Library/Logs/Zight",
    "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist",
  ]
end
