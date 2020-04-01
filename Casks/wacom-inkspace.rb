cask 'wacom-inkspace' do
  version '2.7.4'
  sha256 'add64f699d26731c19ff563ddaa895c54868c1922c749b8af01724046a86eb97'

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://link.wacom.com/i/m?os=mac'
  name 'Wacom Inkspace'
  homepage 'https://www.wacom.com/en-us/products/apps-services/inkspace'

  app 'Wacom Inkspace App.app'
end
