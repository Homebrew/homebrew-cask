cask 'tibco-jaspersoft-studio' do
  version '6.10.0'
  sha256 'f01fdf496d96ba3b8ef2b0690cff7d5c6dd2178686f109a06846ab05e143420e'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"
end
