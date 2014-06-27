class Totalfinder < Cask
  version '1.6'
  sha256 '6042536d75e433bb4615695b51a4fe32c4c962b9da23f693117803ec7b9fe4fc'

  url 'http://downloads.binaryage.com/TotalFinder-1.6.dmg'
  homepage 'http://totalfinder.binaryage.com'

  install 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
