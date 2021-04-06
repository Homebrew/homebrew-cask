cask "touchdesigner" do
  version "2021.11180"
  sha256 "7dd73bb000a5256a818832222ac3353986a5ca22da3f27e2c37b05a0a4dc15d0"

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
