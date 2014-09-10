class Totalfinder < Cask
  version '1.6.2'
  sha256 '7f60614a81f3efcbf34fd6213f9f0a912e5f8472c3039ce1bbde0e58236dc659'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  homepage 'http://totalfinder.binaryage.com'

  pkg 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
