cask "timecamp" do
  version "1.7.1.7"
  sha256 "3eb3e61c78379b543e84539cef084a142e71c4f2513a2c85d3e7bf10b5d44585"

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
