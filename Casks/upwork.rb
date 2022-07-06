cask "upwork" do
  version "5.6.10.13,3c485d1dd2af4f61"
  sha256 "90e405f128e4edeccd2303310365712e48932a68b393c737908da44ddbd16927"

  url "https://upwork-usw2-desktopapp.upwork.com/binaries/v#{version.csv.first.dots_to_underscores}_#{version.csv.second}/Upwork.dmg"
  name "Upwork"
  desc "Work marketplace for freelancing"
  homepage "https://www.upwork.com/"

  livecheck do
    url "https://upwork-usw2-desktopapp.upwork.com/binaries/versions-mac.json"
    strategy :page_match do |page|
      match = page.match(%r{/v(\d+(?:_\d+)*)_([^/]+)/Upwork\.dmg}i)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "Upwork.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Upwork_*",
    "~/Library/Application Support/Upwork",
    "~/Library/Caches/Upwork",
    "~/Library/Logs/Upwork",
    "~/Library/Preferences/com.upwork.Upwork.plist",
    "~/Library/Saved Application State/com.upwork.upwork.savedState",
  ]
end
