cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.32120"
  sha256 arm:   "85c5fbed60fb416b8f87efd25b1539a11a1ca20d17e82013854f2bd3ec61c1dd",
         intel: "d27b340468398aa659c9c17aa381aedb47b531f56d7aaa45765749ace438b839"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/download/archive"
    regex(/href=.*?TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.#{arch}\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"
end
