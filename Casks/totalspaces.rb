cask 'totalspaces' do
  if MacOS.version <= :mountain_lion
    version '1.2.11'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"
    appcast 'http://updates-s3.binaryage.com/totalspaces.xml',
            checkpoint: 'f52e1870289fb95d89b1cab7c42da7c824cbc582b0ea46d8bd3e9c47be81a69a'

    pkg 'TotalSpaces.pkg'

    uninstall pkgutil: 'com.switchstep.totalspaces',
              quit:    'com.binaryage.TotalSpaces'
  else
    version '2.4.6'
    sha256 'b3158cb2288783d542023250f3cabd8c129bd7c828a8c39552b77d56885e8b47'

    url "http://downloads.binaryage.com/TotalSpaces2-#{version}.dmg"
    appcast 'http://updates-s3.binaryage.com/totalspaces2.xml',
            checkpoint: '338a29cf745b71fa5c06613061214a82696121f07116c13438c56dc1ad61956f'

    installer manual: 'TotalSpaces2.app'

    uninstall pkgutil: 'com.binaryage.TotalSpaces2',
              script:  {
                         executable: 'TotalSpaces2 Uninstaller.app/Contents/MacOS/TotalSpaces2 Uninstaller',
                         args:       %w[--headless],
                         sudo:       true,
                       },
              quit:    'com.binaryage.TotalSpaces2'
  end

  name 'TotalSpaces'
  homepage 'http://totalspaces.binaryage.com/'
  license :commercial

  uninstall signal: [
                      ['INT', 'com.binaryage.totalspacescrashwatcher'],
                      ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                    ]
end
