cask "valhalla-space-modulator" do
  version "1.2.8"
  sha256 "12033f7f35e97e6e06e3852e42f50caff17165bc6e79696d6837d61b34858598"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/spacemod/ValhallaSpaceModulatorOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com"
  name "Valhalla Space Modulator"
  desc "Flanger plugin"
  homepage "https://valhalladsp.com/shop/modulation/valhalla-space-modulator/"

  livecheck do
    url "https://valhalladsp.com/demos-downloads/"
    regex(/href=.*?ValhallaSpaceModulatorOSX[._-]v?(\d+(?:[._]\d+)+)v?\d?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("_", ".") }
    end
  end

  pkg "ValhallaSpaceModulatorOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.SpaceModulator.pkg.*"

  # No zap stanza required
end
