cask "touchdesigner" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "2022.26590"

  if Hardware::CPU.intel?
    sha256 "922586506adb9567704cee1da7993525d29ebe6258f72557f5c3185234cbb2ff"
  else
    sha256 "c2e10ec9a0b3da37302f1fcd154ba6e95fa81a4ff2bd1b0dc68d0e7698573a5e"
  end

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
