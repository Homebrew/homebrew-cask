cask "techsmith-capture" do
  version "1.3.25"
  sha256 "8999a3e51bd17f33d6c87e6189468674b5a706860cabc9fbc7456e048d5cb6bb"

  url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  appcast "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TechSmith Capture.app"
end
