cask :v1 => 'wkhtmltopdf-carbon' do
  version '0.12.2'
  sha256 '63a3aaf56602e1630e136c5b43903e4d4757412f56184381d27be2fe9395967b'

  url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-carbon-i386.pkg"
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  pkg "wkhtmltox-#{version}_osx-carbon-i386.pkg"
  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
