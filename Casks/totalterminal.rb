class Totalterminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.10.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.10'
  sha256 '5f2b518a65274797d92a76e95697ace99eb879f00047747334ee8c53e7a9ca8b'
  install 'TotalTerminal.pkg'
  uninstall :script => {
    :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
    :args => %w[--headless]
  }
end
