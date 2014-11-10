class Totalfinder < Cask
  version '1.6.16'
  sha256 '047040fff10ef1fa2aa3a1ddc8636fbaf0c7ca6a4ebeabfb966f3ae536959159'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  homepage 'http://totalfinder.binaryage.com'
  license :unknown

  pkg 'TotalFinder.pkg'
  uninstall :pkgutil => 'com.binaryage.pkg.totalfinder.app',
            :script => {
                        :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                        :args => %w[--headless],
                       }
end
