cask "touchosc-bridge" do
  version "1.7.3.149"
  sha256 "5cc7f72e015ad7aeb7fa5a3e8011a122b0f8414947428c5d715899776ed545a8"

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
