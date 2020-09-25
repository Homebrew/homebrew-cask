cask "touchdesigner" do
  version "2020.26630"
  sha256 "0e8c2fa62cedbda95d90139f448d7660a669ee4a64c40b7a73b660e5418edf6e"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast "https://www.derivative.ca/download/"
  name "Derivative TouchDesigner"
  homepage "https://www.derivative.ca/"

  app "TouchDesigner.app"
end
