cask "techsmith-capture" do
  version "1.3.27"
  sha256 "51e327ea27ebbf32e5d7e44ca83f16209a1196596c1f61406e4a7b4536f5a0ad"

  url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  appcast "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TechSmith Capture.app"
end
