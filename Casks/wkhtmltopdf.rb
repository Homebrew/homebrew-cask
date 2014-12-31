cask :v1 => 'wkhtmltopdf' do
  version '0.12.1'
  sha256 'ef203403b78dd4dc50ec9a3adb6e956d0267e59f7346cc749a6f86378a4bf791'

  url "http://downloads.sourceforge.net/project/wkhtmltopdf/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"

  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
