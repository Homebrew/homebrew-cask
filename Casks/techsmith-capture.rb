cask "techsmith-capture" do
  version "1.3.27,194"
  sha256 :no_check

  url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  appcast "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TechSmith Capture.app"
end
