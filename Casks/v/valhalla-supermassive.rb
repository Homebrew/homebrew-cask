cask "valhalla-supermassive" do
  version "6.0.0v2"
  sha256 "d0b40014469bbdaec1d59b734c99151ec6b998e93e5322124d7d0dda68190e23"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg"
  name "Valhalla Supermassive"
  desc "Delay/reverb plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    url "https://valhalladsp.com/demos-downloads/",
        user_agent: :browser
    regex(/ValhallaSupermassiveOSX[._-]v?(\d+(?:[._]\d+)+(?:v\d+)?)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("_", ".") }
    end
  end

  no_autobump! because: "livecheck is unreachable in autobump environment"

  depends_on :macos

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"

  zap :not_required
end
