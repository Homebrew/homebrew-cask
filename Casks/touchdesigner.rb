cask "touchdesigner" do
  version "2020.44350"
  sha256 "bf7b4f5c953a6b07fb5151c9bf8174a1386d2bdf46f3e880857d565c707c693a"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast "https://www.derivative.ca/download/"
  name "Derivative TouchDesigner"
  homepage "https://www.derivative.ca/"
  auto_updates true

  app "TouchDesigner.app"
end
