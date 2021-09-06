cask "touchosc" do
  version "1.0.5.108"
  sha256 "b1b76240bf302635f8dd4d02200edb166e536ef08a96acfc870af38401efc5fe"

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
