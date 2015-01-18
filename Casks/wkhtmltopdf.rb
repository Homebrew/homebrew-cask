cask :v1 => 'wkhtmltopdf' do
  version '0.12.2'

  if Hardware::CPU.is_32_bit?
    sha256 '63a3aaf56602e1630e136c5b43903e4d4757412f56184381d27be2fe9395967b'
    url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-carbon-i386.pkg"
    pkg "wkhtmltox-#{version}_osx-carbon-i386.pkg"
  else
    sha256 'f53fc73dde8eee05a3a3c05e9666123e5e71fef77b8b658f78801a9a8223b6a9'
    url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
    pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  end

  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
