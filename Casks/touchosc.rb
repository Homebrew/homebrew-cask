cask "touchosc" do
  version "1.0.5.107"
  sha256 "0bce8bed9f27e39f9dffab047e01093b3d4c7f468eefc1d5d25492a77ecd6f72"

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
