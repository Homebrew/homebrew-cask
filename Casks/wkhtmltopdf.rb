class Wkhtmltopdf < Cask
  version '0.12.1'
  sha256 'ef203403b78dd4dc50ec9a3adb6e956d0267e59f7346cc749a6f86378a4bf791'

  url 'http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.1/wkhtmltox-0.12.1_osx-cocoa-x86-64.pkg'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  pkg 'wkhtmltox-0.12.1_osx-cocoa-x86-64.pkg'
  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox'
end
