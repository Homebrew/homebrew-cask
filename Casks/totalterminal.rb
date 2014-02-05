class Totalterminal < Cask
  url 'http://downloads.binaryage.com/TotalTerminal-1.4.10.dmg'
  homepage 'http://totalterminal.binaryage.com'
  version '1.4.10'
  sha1 '6b92d29120f2130380de534038de8f8695bbcc4d'
  install 'TotalTerminal.pkg'
  uninstall :script => {
    :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
    :args => %w[--headless]
  }
end
