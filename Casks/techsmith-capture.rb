cask "techsmith-capture" do
  version "1.3.23"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"
  appcast "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"

  depends_on macos: ">= :high_sierra"

  app "TechSmith Capture.app"
end
