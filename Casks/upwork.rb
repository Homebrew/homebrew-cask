cask "upwork" do
  version "5.6.4.1,814e9843307a4269"
  sha256 "875ea9c68acd3405f1b32bb3c5bf94ebb95ff6b6cd873b6bc698e4b330ba5ecb"

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  name "Upwork"
  desc "Work marketplace for freelancing"
  homepage "https://www.upwork.com/"

  livecheck do
    url "https://updates-desktopapp.upwork.com/binaries/versions-mac.json"
    strategy :page_match do |page|
      match = page.match(%r{/v(\d+(?:_\d+)*)_([^/]+)/Upwork\.dmg}i)
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
