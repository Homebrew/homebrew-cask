class TotalTerminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.3.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.3'
  sha1 '6ed868778d308d1fa228db1ce035460f90723a5d'
  install 'TotalTerminal.pkg'
  uninstall :script => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
            :args => %w[--headless]
end
