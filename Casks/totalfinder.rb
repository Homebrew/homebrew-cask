cask 'totalfinder' do
  if MacOS.version <= :yosemite
    version '1.9.3'
    sha256 'cde59340d0bfcbca36208a1b0ea0d811cf54355b42220214586477514039b2e2'
  else
    version '1.10.2'
    sha256 'c1809a245dd899cb51c54f0bc5b93492eb9611451ba5df9ce0c1bf22544ecf87'
  end

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name 'TotalFinder'
  homepage 'https://totalfinder.binaryage.com/'

  depends_on macos: '>= :mavericks'

  pkg 'TotalFinder.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalfinder.app',
            script:  {
                       executable: 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                       args:       ['--headless'],
                       sudo:       true,
                     }
end
