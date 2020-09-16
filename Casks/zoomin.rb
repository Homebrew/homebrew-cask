cask "zoomin" do
  version "1.0.4"
  sha256 "32d39c18cd8f1a6bf2549b3d9208623e910920e89800374c218354a5a9722ab5"

  # github.com/nothingmagical/ZoomIn/ was verified as official when first introduced to the cask
  url "https://github.com/nothingmagical/ZoomIn/releases/download/v#{version}/ZoomIn-#{version}.zip"
  appcast "https://github.com/nothingmagical/ZoomIn/releases.atom"
  name "Zoom In"
  desc "Safari extension for opening Zoom right away"
  homepage "https://zoom-in.app/"

  depends_on macos: ">= :mojave"

  app "ZoomIn.app"

  zap trash: [
    "~/Library/Application Scripts/com.nothingmagical.zoom-in",
    "~/Library/Containers/com.nothingmagical.zoom-in",
  ]
end
