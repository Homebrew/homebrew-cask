cask "tibco-jaspersoft-studio" do
  version "6.15.0"
  sha256 "423efe1eeff55747bdae9ec02db7d570fef66edbab63f37e646e9bc4c9acaa52"

  # sourceforge.net/jasperstudio/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast "https://sourceforge.net/projects/jasperstudio/rss"
  name "TIBCO Jaspersoft Studio"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
