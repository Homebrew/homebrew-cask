cask "tibco-jaspersoft-studio" do
  version "6.14.0"
  sha256 "8dd900162503297297ec01e07e1f34633e8b82aa8abe6343e64b57b1ae8f06a2"

  # sourceforge.net/jasperstudio/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast "https://sourceforge.net/projects/jasperstudio/rss"
  name "TIBCO Jaspersoft Studio"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
