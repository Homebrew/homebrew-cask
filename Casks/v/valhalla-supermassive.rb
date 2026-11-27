cask "valhalla-supermassive" do
  version "6.0.1v2"
  sha256 "a300c8b400c5dbfa5387b7300468afc06d21367ea9d5f5932099170d417ee8a8"

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
