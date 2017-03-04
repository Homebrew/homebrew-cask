cask 'totalterminal' do
  version '1.6'
  sha256 '552573dcbf3c75a3b11f9d0737a9abaee383b4f9f7aee36706277045698d4cf4'

  url "http://downloads.binaryage.com/TotalTerminal-#{version}.dmg"
  appcast 'https://totalterminal.binaryage.com/changelog-beta.txt',
          checkpoint: 'c55f3bc02ec9c3f27036fbe11de7a16c114f54328e9eefb5b8d4e67febd5162d'
  name 'TotalTerminal'
  homepage 'https://totalterminal.binaryage.com/'

  pkg 'TotalTerminal.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalterminal.app',
            script:  {
                       executable: 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
                       args:       %w[--headless],
                     }
end
