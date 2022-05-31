cask "touchdesigner" do
  version "2022.24200"
  sha256 "52093c2ee74aa45f9044244c481b20bde08eb8e2dc67f10f12fcade6924f70bd"

  url "https://download.derivative.ca/TouchDesigner.#{version}.intel.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/download/"
    regex(/href=.*?TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.intel\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "TouchDesigner.app"
end
