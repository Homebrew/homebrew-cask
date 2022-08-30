cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.28040"
  sha256 arm:   "04f9e90b8784bda8c51e2af6b0c292aea0a4096bc406250ec7e3f6c0f8400e9d",
         intel: "ed03f681e9d2fd473de92860bf048063271adb7475f32698ca684de2cbab3f19"

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
