class Twindocs < Cask
  url 'https://www.twindocs.com/plugins/es/tools_mac/Twindocs%20tools.pkg.zip'
  homepage 'https://www.twindocs.com'
  version 'latest'
  no_checksum
  install 'Twindocs tools.pkg'
  uninstall :pkgutil => 'com.twindocs.ambassador'
end
