cask :v1 => 'twindocs' do
  version :latest
  sha256 :no_check

  url 'https://www.twindocs.com/plugins/es/tools_mac/Twindocs%20tools.pkg.zip'
  homepage 'https://www.twindocs.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Twindocs tools.pkg'

  uninstall :pkgutil => 'com.twindocs.ambassador'
end
