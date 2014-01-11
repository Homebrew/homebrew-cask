class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.6.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.6'
  sha1 'ce0e2fe7fc3bd7b98622c95e2bb73e9fb2f55546'
  install 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
