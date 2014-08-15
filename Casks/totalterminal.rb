class Totalterminal < Cask
  version '1.5.2'
  sha256 '5ed1490942b62e0d1e72c4f5e6f2dacb3dc2bde0919fd474fea1cadf28f7df42'

  url 'http://downloads.binaryage.com/TotalTerminal-1.5.2.dmg'
  homepage 'http://totalterminal.binaryage.com'

  install 'TotalTerminal.pkg'
  uninstall :script => {
    :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
    :args => %w[--headless]
  }
end
