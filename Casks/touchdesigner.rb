cask "touchdesigner" do
  version "2021.15800"
  sha256 "a341288ba1866b487ef6ffdc05612a9299c6be9ecc465c7822beffc1787fa3c0"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://www.derivative.ca/"

  livecheck do
    url "https://www.derivative.ca/download/"
    regex(%r{href=.*?/TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "TouchDesigner.app"
end
