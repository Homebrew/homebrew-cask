cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.29850"
  sha256 arm:   "87da166d26a246b143add9f1cc8b791694ac2d63351598dc8c84915060733173",
         intel: "c2b067a418e0e0f867417ba302f9a93327f98717c6a3ec55d19b602e7f429bc6"

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
