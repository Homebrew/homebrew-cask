cask 'totalfinder' do
  version '1.8.0'
  sha256 'f8768dd3c7e67e772c83165618c2fa2e72a55983bb977b293f5209b26163e1bd'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name 'TotalFinder'
  homepage 'http://totalfinder.binaryage.com'
  license :commercial

  depends_on macos: '>= :mavericks'

  pkg 'TotalFinder.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalfinder.app',
            script:  {
                       executable: 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                       args:       %w[--headless],
                     }
end
