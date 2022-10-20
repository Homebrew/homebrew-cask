cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.29530"
  sha256 arm:   "93c5f63c588440735ffb81347b409365835af6fc4f4df425863c1493b4f85381",
         intel: "80d08bf3a0bb0fcb74bac68fc70a38476b2b84a9a99dd2269b555a2c8187030e"

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
