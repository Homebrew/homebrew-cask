cask 'tibco-jaspersoft-studio' do
  version '6.5.1'
  sha256 '7570083b595e3843979821ef916e31ee1d742d215f4ad6ec93b806a2bbf64983'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}.final_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: 'f8eaf9535f217344dc786f5b49cb181e81591b2e39ace640defcad17a6361524'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "TIBCO Jaspersoft Studio #{version}.final.app"
end
