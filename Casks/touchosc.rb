cask "touchosc" do
  version "1.0.2.98"
  sha256 "489811ed5448ee37900a140768c1d63a8a68ff2e20354491234f0eb83ca56bfb"

  url "https://hexler.net/pub/touchosc/touchosc-#{version}-macos.dmg"
  name "touchosc"
  desc "MIDI and OSC Controller Software"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/releases"
    regex(%r{href=.*?/touchosc-(\d+(?:\.\d+)*)-macos\.dmg}i)
  end

  app "TouchOSC.app"
end
