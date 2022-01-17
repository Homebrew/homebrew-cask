cask "toneprint" do
  version "4.5.5"
  sha256 "c85bb2875578eab40b9e091ebe07e2a85e2055af047ccf883e2aae2e0df7f6d5"

  url "https://mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/TonePrint_#{version}_MacOS.zip",
      verified: "mediadl.musictribe.com"
  name "TonePrint App"
  desc "TonePrints let you completely alter the character of your  pedal in seconds"
  homepage "https://www.tcelectronic.com/tonePrints.html"

  livecheck do
    skip "No version information available"
  end

  app "Toneprint.app"

  zap trash: [
    "~/Library/Caches/com.tcelectronic.toneprint",
    "~/Library/Application Support/TonePrint",
  ]
end
