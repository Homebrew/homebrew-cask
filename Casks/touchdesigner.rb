cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.31030"
  sha256 arm:   "4ef97cfe8e19c20fd7ad89af471c1354b875110433800dd202f93c217cb66288",
         intel: "a27d389233a3f95f7a70f8d96d77362f7628279ccab666b6027151bd3c18d339"

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
