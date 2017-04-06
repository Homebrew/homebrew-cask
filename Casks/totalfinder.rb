cask 'totalfinder' do
  version '1.8.2'
  sha256 '1596aed64712a33c337f0782a8f5aa538022a686d1985a63628dd32278617b65'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name 'TotalFinder'
  homepage 'https://totalfinder.binaryage.com/'

  depends_on macos: '>= :mavericks'

  pkg 'TotalFinder.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalfinder.app',
            script:  {
                       executable: 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                       args:       %w[--headless],
                       sudo:       true,
                     }
end
