cask "touchosc-bridge" do
  version "1.7.3.152"
  sha256 "eb5b4f24488c0298933fbe1aff8d634cc15dab0083709eef55aa17e913e89f7a"

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
