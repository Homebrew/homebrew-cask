cask "touchosc-bridge" do
  version "1.6.0"
  sha256 "2a9d20a033e18cf27af61a65d29d02dedadb23e6e2ece346586f860a2bc239f0"

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.zip"
  name "TouchOSC Bridge"
  desc "Modular touch control surface bridge for OSC & MIDI"
  homepage "https://hexler.net/software/touchosc"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/touchosc-bridge-(\d+(?:\.\d+)*)-macos\.zip}i)
  end

  app "TouchOSC Bridge.app"
end
