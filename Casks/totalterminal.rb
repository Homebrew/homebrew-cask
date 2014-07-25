class Totalterminal < Cask
  version '1.5'
  sha256 '3d2083db08fddf532aa31ff72b140e799e97b9cbaa27e016d06f2133395add29'

  url 'http://downloads.binaryage.com/TotalTerminal-1.5.dmg'
  homepage 'http://totalterminal.binaryage.com'

  install 'TotalTerminal.pkg'
  uninstall :script => {
    :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
    :args => %w[--headless]
  }
end
