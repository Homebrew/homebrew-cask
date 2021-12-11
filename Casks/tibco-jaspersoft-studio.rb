cask "tibco-jaspersoft-studio" do
  version "6.18.1"
  sha256 "e7f767e71334809c9367dad554d34dbc51d5ae161ec8210c916f41c2d5ff2421"

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
