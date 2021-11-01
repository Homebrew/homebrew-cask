cask "touchosc-bridge" do
  version "1.7.2.147"
  sha256 "74bcfd6673117d02d6712f3ea3ce8f08f7630638b70adf491ebcf87e3e6f26d8"

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.dmg"
  name "TouchOSC Bridge"
  desc "Modular touch control surface bridge for OSC & MIDI"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/bridge-releases"
    regex(%r{href=.*?/touchosc-bridge-(\d+(?:\.\d+)*)-macos\.dmg}i)
  end

  app "TouchOSC Bridge.app"

  zap trash: "~/Library/Preferences/net.hexler.TouchOSCBridge.plist"
end
