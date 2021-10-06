cask "upwork" do
  version "5.6.9.3,10c2eb9781db4d7f"
  sha256 "37ecf8703d99157ca09e9771ab5178e518d0440126ed9ddb89e10e7a8957968a"

  url "https://upwork-usw2-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  name "Upwork"
  desc "Work marketplace for freelancing"
  homepage "https://www.upwork.com/"

  livecheck do
    url "https://upwork-usw2-desktopapp.upwork.com/binaries/versions-mac.json"
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
