cask "touchdesigner" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "2022.25370"

  if Hardware::CPU.intel?
    sha256 "cf0a32363378adda9caf2449de013885a7ee60e9501472fcdfa94817783063ce"
  else
    sha256 "02952854ffa0f4d9c8f4a171e4a6f142dd48d1bc39129578959a129ddab67264"
  end

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/colorbox/download/release-download/39"
    regex(/href=.*?TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.#{arch}\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"
end
