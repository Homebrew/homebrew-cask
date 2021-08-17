cask "touchdesigner" do
  version "2021.14360"
  sha256 "578d08b27dec2b56f2cd6811c12e65fe8ef05a5702fb59b9d8cd725116d6feea"

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
