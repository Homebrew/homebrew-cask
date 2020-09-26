cask "techsmith-capture" do
  version "1.3.23"
  sha256 "6ac30e612b6f066debe4c1fa77533774a9857494d44c33a4b95b84e950968270"

  url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  appcast "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TechSmith Capture.app"
end
