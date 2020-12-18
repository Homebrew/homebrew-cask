cask "touchdesigner" do
  version "2020.27390"
  sha256 "92e0e8c0deecfc567f96a8e61ec59098c58729b5969af510e8871a146de269eb"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast "https://www.derivative.ca/download/"
  name "Derivative TouchDesigner"
  homepage "https://www.derivative.ca/"

  app "TouchDesigner.app"
end
