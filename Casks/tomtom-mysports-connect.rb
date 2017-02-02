cask 'tomtom-mysports-connect' do
  version :latest
  sha256 :no_check

  # sports.tomtom-static.com was verified as official when first introduced to the cask
  url 'https://sports.tomtom-static.com/downloads/desktop/mysportsconnect/latest/TomTomMySportsConnectInstaller.pkg'
  name 'TomTom MySports Connect'
  homepage 'https://www.tomtom.com/mysports/getstarted'

  pkg 'TomTomMySportsConnectInstaller.pkg'

  uninstall quit:    'com.tomtom.mysportsconnect',
            pkgutil: [
                       'com.tomtom.tomtomfa.pkg',
                       'com.tomtom.tomtomfa.temp.pkg',
                     ],
            delete:  '/Applications/TomTom MySports Connect.app'
end
