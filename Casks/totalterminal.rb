class Totalterminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.6.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.6'
  sha1 'f77ca7d01fe27cc1b3ed5631c7455a85faf6500b'
  install 'TotalTerminal.pkg'
  uninstall :script => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
            :args => %w[--headless]
end
