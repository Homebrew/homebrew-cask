cask "wwdc" do
  version "7.1.1"
  sha256 "973eb2f0f7c5e1f77f8bfc9b77688661e797d3335bcec2cfbc322fcf3c10bc94"

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip",
      verified: "github.com/insidegui/WWDC/"
  name "WWDC"
  desc "Allows access to WWDC livestreams, videos and sessions"
  homepage "https://wwdc.io/"

  livecheck do
    url :url
    strategy :github_latest
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
