class Totalterminal < Cask
  version '1.4.11'
  sha256 'c0689bc4912042441c5e056cae9a04a681d4dbe34c1fc157c890cc3febcd41f2'

  url 'http://downloads.binaryage.com/TotalTerminal-1.4.11.dmg'
  homepage 'http://totalterminal.binaryage.com'

  install 'TotalTerminal.pkg'
  uninstall :script => {
    :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
    :args => %w[--headless]
  }
end
