cask 'tomtom-mydrive-connect' do
  version :latest
  sha256 :no_check

  url 'https://cdn.sa.services.tomtom.com/static/sa/Mac/MyDriveConnect.dmg'
  name 'TomTom MyDrive Connect'
  homepage 'https://www.tomtom.com/mydrive-connect/'

  pkg 'MyDriveConnect.mpkg'

  uninstall pkgutil:    [
                          'com.tomtom.TomTomMyDriveConnectHelper',
                          'com.tomtom.mytomtomsa.temp.pkg',
                          'com.tomtom.mytomtomsa.pkg',
                        ],
            login_item: 'TomTomMyDriveConnectHelper'
end
