cask 'tibco-jaspersoft-studio' do
  version '6.3.1'
  sha256 'e2c0e713d3c5b309e1944c3d472f9dcea9e29d4c0ba439942f377ba9786fcd6a'

  # sourceforge.net/jasperstudio was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jasperstudio/TIBCOJaspersoftStudio-#{version}.final-mac-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/jasperstudio/rss',
          checkpoint: '367747da803dcf7a26c346a67d39b2a3aa96a89b59ce300ecc298a5da3df1782'
  name 'TIBCO Jaspersoft Studio'
  homepage 'https://community.jaspersoft.com/project/jaspersoft-studio'

  app "TIBCO Jaspersoft Studio #{version}.final.app"
end
