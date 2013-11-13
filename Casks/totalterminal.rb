class Totalterminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.6.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.6'
  sha1 'd0163f80f4c993b05952cef84b55aabaa37af0cc'
  install 'TotalTerminal.pkg'
  uninstall :script => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
            :args => %w[--headless]
end
