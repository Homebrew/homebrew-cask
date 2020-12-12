cask "wacom-inkspace" do
  version "2.7.4"
  sha256 "f405de898bb43622b07a86c42a244cc27c462eaca0d85deae76e4271adebc4cc"

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://link.wacom.com/i/m?os=mac"
  name "Wacom Inkspace"
  homepage "https://www.wacom.com/en-us/products/apps-services/inkspace"

  app "Wacom Inkspace App.app"
end
