cask :v1 => 'wkhtmltopdf' do
  version '0.12.2.1'

  if Hardware::CPU.is_32_bit?
    sha256 '582d7da3226809a5ca8bfc6c60903a368fe4c7c54fc31df13bbd0bd2ed093968f1'
    # sourceforge.net is the official download host per the vendor homepage
    url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-carbon-i386.pkg"
    pkg "wkhtmltox-#{version}_osx-carbon-i386.pkg"
  else
    sha256 'c2fd9b39182453ba9672f528e7a503928e51bc6a45c3117da06a5193af338d35'
    # sourceforge.net is the official download host per the vendor homepage
    url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
    pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  end

  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
