cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.26590"
  sha256 arm:   "c2e10ec9a0b3da37302f1fcd154ba6e95fa81a4ff2bd1b0dc68d0e7698573a5e",
         intel: "922586506adb9567704cee1da7993525d29ebe6258f72557f5c3185234cbb2ff"

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
