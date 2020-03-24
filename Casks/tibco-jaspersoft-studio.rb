cask 'tibco-jaspersoft-studio' do
  version '6.12.0'
  sha256 '23c25c5925dbb7fcd48bbef75f61827d079c44337c7b223fd7d4562f07be83b9'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
