class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.2.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.2'
  sha1 '62cd46851bb46649a4f9c2f7e8db1dde3bb63d92'
  install 'TotalFinder.pkg'
  uninstall :script => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
            :args => %w[--headless]
end
