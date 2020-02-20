cask 'tibco-jaspersoft-studio' do
  version '6.11.0'
  sha256 '45f415a11fe29c5746f05cdb814617cd42d4c009f268ca19f6fea4a93a0d55e8'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
