cask "wavtap" do
  version "0.3.0"
  sha256 "b114703e407ce269070165421a81f74e64ac1730a85d829c148325b4ac1a18f6"

  url "https://github.com/pje/WavTap/releases/download/#{version}/WavTap.#{version}.pkg"
  appcast "https://github.com/pje/WavTap/releases.atom"
  name "WavTap"
  desc "Tool to globally capture whatever sound is playing"
  homepage "https://github.com/pje/wavtap"

  pkg "WavTap.#{version}.pkg"

  uninstall pkgutil: "com.wavtap.*",
            kext:    "com.wavtap.driver.WavTap"
end
