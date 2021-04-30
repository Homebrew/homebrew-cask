cask "wwdc" do
  version "7.2,1016"
  sha256 "60dd29ca916b597663881bd3e9193a2e66f578c802b09b60a320bc25af92522b"

  url "https://github.com/insidegui/WWDC/releases/download/#{version.before_comma}/WWDC_v#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/insidegui/WWDC/"
  name "WWDC"
  desc "Allows access to WWDC livestreams, videos and sessions"
  homepage "https://wwdc.io/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(/WWDC_v?(\d+(?:\.\d+)*)-(\d+(?:\.\d+)*)\.dmg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "WWDC.app"

  zap trash: [
    "~/Library/Application Support/io.wwdc.app",
    "~/Library/Application Support/io.wwdc.app.TranscriptIndexingService",
    "~/Library/Application Support/WWDC",
    "~/Library/Preferences/io.wwdc.app.plist",
  ]
end
