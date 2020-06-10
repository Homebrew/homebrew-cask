cask 'tibco-jaspersoft-studio' do
  version '6.12.2'
  sha256 'edba336fe4b0cbb8df930e281ac0e3d177aa13940eff6f6ab5c09e529919f629'

  # sourceforge.net/jasperstudio/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
