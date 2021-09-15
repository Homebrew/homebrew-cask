cask "tibco-jaspersoft-studio" do
  version "6.17.0"
  sha256 "e58652dd76e13828986d66fa1778a6182841a82cabc22c1434577094b9fb5e31"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  name "TIBCO Jaspersoft Studio"
  desc "Eclipse-based report development tool for JasperReports"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  livecheck do
    url "https://community.jaspersoft.com/project/jaspersoft-studio/releases"
    regex(/TIB[._-]js[._-]studiocomm[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]x86[._-]64\.dmg/i)
  end

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
