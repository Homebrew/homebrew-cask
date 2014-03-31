class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.22.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.22'
  sha256 'f071e2675e4f523d4c95ab5dbf3b7374d6aa1d1efec9a0e149ae01dcf41e55e5'
  install 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
