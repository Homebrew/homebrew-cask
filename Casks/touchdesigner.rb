cask "touchdesigner" do
  version "2021.16410"
  sha256 "76eec5785078970655e32715447af8def648ae88d1afe6ff96e0989687bdb86c"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/download/"
    regex(/href=.*?TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "TouchDesigner.app"
end
