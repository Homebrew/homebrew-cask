cask "touchdesigner" do
  version "2021.16270"
  sha256 "29e2395aa9a0e0f2b84fe5171474627ee21f475b04e97a74deb17bbdd4fd02fb"

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
