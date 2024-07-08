cask "wacom-inkspace" do
  version "2.7.4"
  sha256 "f405de898bb43622b07a86c42a244cc27c462eaca0d85deae76e4271adebc4cc"

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  name "Wacom Inkspace"
  homepage "https://www.wacom.com/en-us/products/apps-services/inkspace"

  livecheck do
    url "https://link.wacom.com/i/m?os=mac"
    strategy :header_match
  end

  app "Wacom Inkspace App.app"

  caveats do
    requires_rosetta
  end
end
