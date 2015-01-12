cask :v1 => 'wkhtmltopdf' do
  version '0.12.2'
  sha256 'f53fc73dde8eee05a3a3c05e9666123e5e71fef77b8b658f78801a9a8223b6a9'

  url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"

  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
