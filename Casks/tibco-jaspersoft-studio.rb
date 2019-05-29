cask 'tibco-jaspersoft-studio' do
  version '6.8.0'
  sha256 '614b2c62efb311e3be669fdbc7f93ec38f15da50492b19fd43a85da40d286bee'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
