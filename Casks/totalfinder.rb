class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.4.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.4'
  sha1 'aafaca6d516740726ef8c5422622289ed9a5b76e'
  install 'TotalFinder.pkg'
  uninstall :script => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
            :args => %w[--headless]
end
