cask "upwork" do
  version "5.6.10.0,b124e6f3a4944b32"
  sha256 "392f8d69c1ec780e90dcbbdcc9cf0e7284e73e43dc71f66a663d42d41e32da59"

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
