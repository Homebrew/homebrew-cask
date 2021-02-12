cask "touchdesigner" do
  version "2020.28110"
  sha256 "cfcedad300a52b08a5621f693ecce047b52d36e18900cdb460e6cee3e9f9815e"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  homepage "https://www.derivative.ca/"

  livecheck do
    url "https://www.derivative.ca/download/"
    strategy :page_match
    regex(%r{href=.*?/TouchDesigner\.(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "TouchDesigner.app"
end
