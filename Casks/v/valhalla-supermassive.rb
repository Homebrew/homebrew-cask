cask "valhalla-supermassive" do
  version "4.0.0"
  sha256 "6f64b1401cc788877bc19ad07b1d52039196b268702fdd1f458388b2f9954377"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}v#{version.major}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com"
  name "Valhalla Supermassive"
  desc "Delay/reverb plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    url "https://valhalladsp.com/demos-downloads/"
    regex(/href=.*?ValhallaSupermassiveOSX[._-]v?(\d+(?:[._]\d+)+)v?\d+\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("_", ".") }
    end
  end

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"

  # No zap stanza required
end
