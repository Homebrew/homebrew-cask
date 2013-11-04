class TotalTerminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.5.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.5'
  sha1 '0a0bd7dbe0cac44b69aa408ab21645885317405e'
  install 'TotalTerminal.pkg'
  uninstall :script => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
            :args => %w[--headless]
end
