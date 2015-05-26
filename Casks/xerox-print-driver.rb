cask :v1 => 'xerox-print-driver' do
  name 'Xerox Print Driver'
  homepage 'http://www.support.xerox.com/support/colorqube-8900/downloads'
  license :closed
  tags :vendor => 'Xerox'

  if MacOS.release <= :leopard
    version '2.94.3'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx/pt_BR/10.5.XeroxPrintDriver.#{version}.dmg"
    sha256 '1c59094ad2f39e2a086dfb59adc555fc87d1f88a8ac6ff034e7580eed55cf360'
  elsif MacOS.release <= :snow_leopard
    version '2.112.0'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx/pt_BR/XeroxPrintDriver.#{version}.dmg"
    sha256 '3517cb64f283f12c60030710073812131361ddae358950bc35afe72b163a9bf7'
  else
    version '3.52.0_1481'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx107/pt_BR/XeroxPrintDriver.#{version}.dmg"
    sha256 'ed958701b6adca202f0b7936cfea0fac64c2161e228f35e00f341e29df36c18f'
  end

  pkg "Xerox Print Driver #{version.sub(/_.*/,'')}.pkg"

  uninstall :pkgutil => [
                         'com.xerox.installer.addprintqueue',
                         'com.xerox.installer.finishup',
                         'com.xerox.print.xeroxPrinter.pkg'
                        ]

  zap :rmdir => '/Library/Application Support/Xerox'
end
