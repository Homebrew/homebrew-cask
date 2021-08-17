cask "touchosc" do
  version "1.0.3.100"
  sha256 "849d7bd1c54fb89ef47f85083a48fc143c051e0b5d608ebfa06dc8ef20dafd44"

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
