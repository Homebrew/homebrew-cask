cask 'tomtom-mysports-connect' do
  version :latest
  sha256 :no_check

  url 'http://download.tomtom.com/sweet/fitness/MySportsConnectDesktop/current/TomTomMySportsConnectInstaller.pkg'
  name 'TomTom MySports Connect'
  homepage 'http://www.tomtom.com/de_ch/mysports/getstarted/'
  license :gpl

  pkg 'TomTomMySportsConnectInstaller.pkg'

  uninstall quit:    'com.tomtom.mysportsconnect',
            pkgutil: [
                       'com.tomtom.tomtomfa.pkg',
                       'com.tomtom.tomtomfa.temp.pkg',
                     ],
            delete:  '/Applications/TomTom MySports Connect.app'
end
