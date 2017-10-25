cask 'totalterminal' do
  version '1.6'
  sha256 '552573dcbf3c75a3b11f9d0737a9abaee383b4f9f7aee36706277045698d4cf4'

  url "http://downloads.binaryage.com/TotalTerminal-#{version}.dmg"
  appcast 'https://totalterminal.binaryage.com/changelog-beta.txt',
          checkpoint: '56c5a64a27476506814254ac090369873f1c97638037b14cf34727b0d41aec91'
  name 'TotalTerminal'
  homepage 'https://totalterminal.binaryage.com/'

  depends_on macos: '<= :yosemite'

  pkg 'TotalTerminal.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalterminal.app',
            script:  {
                       executable: 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
                       args:       ['--headless'],
                     }
end
