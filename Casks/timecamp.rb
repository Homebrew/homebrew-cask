cask "timecamp" do
  version "1.7.1.6"
  sha256 "275658ea5958489d14185775f9ab3eebb079be250fa7fefe91e26dc38d5ab4c7"

  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg",
      verified: "timecamp.s3.amazonaws.com/"
  name "TimeCamp"
  desc "Client application for TimeCamp software - track time and change tasks"
  homepage "https://www.timecamp.com/"

  livecheck do
    url "https://app.timecamp.com/downloader/currentDesktopAppVersion/"
    strategy :page_match
    regex(/"1.x":"(\d+(?:\.\d+)*)/i)
  end

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
