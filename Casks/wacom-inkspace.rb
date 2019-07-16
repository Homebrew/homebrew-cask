cask 'wacom-inkspace' do
  version '2.7.0'
  sha256 'efbf407f39c58394b8037280da4f05ccb354494c00ff3e65aee78a442dc19735'

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://link.wacom.com/i/m?os=mac'
  name 'Wacom Inkspace'
  homepage 'https://www.wacom.com/en-us/products/apps-services/inkspace'

  app 'Wacom Inkspace App.app'
end
