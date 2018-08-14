cask 'tibco-jaspersoft-studio' do
  version '6.6.0'
  sha256 'bdc0a67e2062c034665b17497bee1cf1b3e454107f549e9d28a6fb5daa461c06'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "TIBCO Jaspersoft Studio #{version}.app"
end
