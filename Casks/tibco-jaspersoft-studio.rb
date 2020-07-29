cask 'tibco-jaspersoft-studio' do
  version '6.13.0'
  sha256 '7772b404329b7c7a66f951905fab4f82f47105337a08dce82ea22d15e2d4be88'

  # sourceforge.net/jasperstudio/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
