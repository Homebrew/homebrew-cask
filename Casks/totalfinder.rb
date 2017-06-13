cask 'totalfinder' do
  version '1.9.3'
  sha256 'cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2'

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
