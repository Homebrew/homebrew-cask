cask "upwork" do
  version "5.5.0.0,c501864210a74fd4"
  sha256 "25d9ac8f0d7358a00d6a7ef6873416fbbf473759aa23b744c722bfd8573cf170"

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  name "Upwork"
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
