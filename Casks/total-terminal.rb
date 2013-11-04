class TotalTerminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.4.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.4'
  sha1 '5cc8286b598ab4c85eff0256671c2ff6d98a0262'
  install 'TotalTerminal.pkg'
  uninstall :script => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
            :args => %w[--headless]
end
