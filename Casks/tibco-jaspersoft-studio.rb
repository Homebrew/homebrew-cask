cask 'tibco-jaspersoft-studio' do
  version '6.4.0'
  sha256 'f8f512ddc8cbc9add44a20cecc979cf7e4a2e751f7951c58384ed026af55f1e7'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: '09960bb87a67be6dc481a6ebe3c454a436ec5db35f57e7f3a437e55b1d18ec9b'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "TIBCO Jaspersoft Studio #{version}.app"
end
