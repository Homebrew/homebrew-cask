cask "touchdesigner" do
  version "2022.25370"
  sha256 "02952854ffa0f4d9c8f4a171e4a6f142dd48d1bc39129578959a129ddab67264"

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
