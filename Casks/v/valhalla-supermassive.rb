cask "valhalla-supermassive" do
  version "5.0.0"
  sha256 "eaac6d0a24ffed0a02afd1dd06124d12f94716d32a8ac376606aa2d701a70c3e"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com"
  name "Valhalla Supermassive"
  desc "Delay/reverb plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    url "https://valhalladsp.com/demos-downloads/"
    regex(/ValhallaSupermassiveOSX[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("_", ".") }
    end
  end

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"

  # No zap stanza required
end
