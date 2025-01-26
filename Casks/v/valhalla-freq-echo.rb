cask "valhalla-freq-echo" do
  version "1.2.8"
  sha256 "7e8681bd90fe7c1ef5b82a87c5d90bd1051980c256b0bd9424ea9cbfc53a9bdc"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/freqecho/ValhallaFreqEchoOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com"
  name "Valhalla Freq Echo"
  desc "Frequency shifter plugin"
  homepage "https://valhalladsp.com/shop/delay/valhalla-freq-echo/"

  livecheck do
    url "https://valhalladsp.com/demos-downloads/"
    regex(/href=.*?ValhallaFreqEchoOSX[._-]v?(\d+(?:[._]\d+)+)v?\d?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("_", ".") }
    end
  end

  pkg "ValhallaFreqEchoOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.FreqEcho.pkg.*"

  # No zap stanza required
end
