cask "tibco-jaspersoft-studio" do
  version "6.17.0"
  sha256 "e58652dd76e13828986d66fa1778a6182841a82cabc22c1434577094b9fb5e31"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  appcast "https://sourceforge.net/projects/jasperstudio/rss"
  name "TIBCO Jaspersoft Studio"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
