cask "touchdesigner" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "2022.25370"

  if Hardware::CPU.intel?
    sha256 "02952854ffa0f4d9c8f4a171e4a6f142dd48d1bc39129578959a129ddab67264"
  else
    sha256 "2cb17ea355544842bc30f08c5a15673a04c019688b731973583ac55afa3a65ea"
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
