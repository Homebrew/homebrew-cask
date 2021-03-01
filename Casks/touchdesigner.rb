cask "touchdesigner" do
  version "2021.10330"
  sha256 "f8a858cabb8e7c3386170a5a974057f55ea66cd85b68ac790a8f3caff981d3ee"

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
