cask 'twindocs' do
  version '1.0.8'
  sha256 '144c7986e02fc78e44051afcda7c7e68229c0b4b7a55b7019028a46bd8bfa00c'

  url 'https://www.twindocs.com/plugins/es/tools_mac/Twindocs%20tools.pkg.zip'
  appcast 'https://www.twindocs.com/plugins/EN/tools_mac/version.info.xml'
  name 'Twindocs tools'
  homepage 'https://www.twindocs.com/'

  pkg 'Twindocs tools.pkg'

  uninstall pkgutil: 'com.twindocs.ambassador'
end
