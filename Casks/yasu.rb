cask "yasu" do
  if MacOS.version <= :el_capitan
    version "3.0.9,509"
    sha256 "bc7716b2852cdbdc02aca085b5fa70cbf5a0983ed5ff1f489de0a86348527a0e"
    url "https://yasuformac.com/appcasts/10.11/yasuformac_#{version.after_comma}.zip"
    livecheck do
      url "https://yasuformac.com/appcasts/10.11/yasu.xml"
      strategy :sparkle
    end
  elsif MacOS.version <= :sierra
    version "4.0.5,605"
    sha256 "dc18c2ee91144bd37b94ce6bab5cf2861b698432a301d1dd03be2bba23dbd609"
    url "https://yasuformac.com/appcasts/10.12/yasuformac_#{version.after_comma}.zip"
    livecheck do
      url "https://yasuformac.com/appcasts/10.12/yasu.xml"
      strategy :sparkle
    end
  else
    version "5.0.1,701"
    sha256 "1fee2a849d9473b3d4776cf275ba48403a9b2c641077d4f4b61cd331d7f6459f"
    url "https://yasuformac.com/appcasts/10.13/yasuformac_#{version.after_comma}.zip"
    livecheck do
      url "https://yasuformac.com/appcasts/10.13/yasu.xml"
      strategy :sparkle
    end
  end

  name "Yasu"
  desc "Maintenance utitlity"
  homepage "https://yasuformac.com/"

  app "Yasu for Mac.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help*",
    "~/Library/Caches/net.yasuapp.yasu",
    "~/Library/Logs/Yasu.log",
    "~/Library/Preferences/net.yasuapp.yasu.plist",
    "~/Library/Preferences/org.jimmitchell.yasu.plist",
  ]
end
