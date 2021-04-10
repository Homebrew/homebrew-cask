cask "touchdesigner" do
  version "2021.12380"
  sha256 "a5912e1dc22564effbbe1adeeffbc4b39f8e298209d5bfb454a30e740a22df1a"

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
