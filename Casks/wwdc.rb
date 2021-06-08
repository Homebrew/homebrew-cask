cask "wwdc" do
  version "7.3.3,1024"
  sha256 "b1dde361e43c58f30d40e1fefab38699322e95a98b3eb4325177e4a7abea1ea4"

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
