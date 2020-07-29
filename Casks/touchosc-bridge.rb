cask "touchosc-bridge" do
  version "1.6.0"
  sha256 "2a9d20a033e18cf27af61a65d29d02dedadb23e6e2ece346586f860a2bc239f0"

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.zip"
  appcast "https://hexler.net/software/touchosc"
  name "TouchOSC Bridge"
  homepage "https://hexler.net/software/touchosc"

  app "TouchOSC Bridge.app"
end
