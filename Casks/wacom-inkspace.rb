cask 'wacom-inkspace' do
  version '2.7.3'
  sha256 'bff10c04528e30ec9ee4d1e291cac1d4e951bafd7a5ed5320289fe582136110e'

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://link.wacom.com/i/m?os=mac'
  name 'Wacom Inkspace'
  homepage 'https://www.wacom.com/en-us/products/apps-services/inkspace'

  app 'Wacom Inkspace App.app'
end
