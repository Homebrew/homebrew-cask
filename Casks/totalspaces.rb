cask 'totalspaces' do
  if MacOS.release <= :mountain_lion
    version '1.2.11'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"
    appcast 'http://updates-s3.binaryage.com/totalspaces.xml',
            checkpoint: 'f52e1870289fb95d89b1cab7c42da7c824cbc582b0ea46d8bd3e9c47be81a69a'

    pkg 'TotalSpaces.pkg'

    uninstall pkgutil: 'com.switchstep.totalspaces',
              quit:    'com.binaryage.TotalSpaces'
  else
    version '2.3.9'
    sha256 'bceb14233264b95cdac18c57c57f1e3c95988b76e3795c270d1e8cdd4e58f250'

    url "http://downloads.binaryage.com/TotalSpaces2-#{version}.dmg"
    appcast 'http://updates-s3.binaryage.com/totalspaces2.xml',
            checkpoint: 'f52e1870289fb95d89b1cab7c42da7c824cbc582b0ea46d8bd3e9c47be81a69a'

    installer manual: 'TotalSpaces2.app'

    uninstall pkgutil: 'com.binaryage.TotalSpaces2',
              script:  {
                         executable: 'TotalSpaces2 Uninstaller.app/Contents/MacOS/TotalSpaces2 Uninstaller',
                         args:       %w[--headless],
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
