cask "tibco-jaspersoft-studio" do
  version "6.16.0"
  sha256 "5cf493f88c4ac424cd5b022106e0703c141373531b0d4f1b8b9e00c20032095e"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  appcast "https://sourceforge.net/projects/jasperstudio/rss"
  name "TIBCO Jaspersoft Studio"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
