cask "tibco-jaspersoft-studio" do
  version "6.15.0"
  sha256 "00e5cf1bc27db5baf53e85d3bcc80422c7629be4382308a6f96c6497cb842166"

  # sourceforge.net/jasperstudio/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast "https://sourceforge.net/projects/jasperstudio/rss"
  name "TIBCO Jaspersoft Studio"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
