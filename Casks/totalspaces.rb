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
    version '2.6.14'
    sha256 'f1408daa923e69c0a2bd702f618692ddda9197f449f106683a3a6395d8437110'

    url "http://downloads.binaryage.com/TotalSpaces#{version.major}-#{version}.dmg"
    appcast "http://updates-s3.binaryage.com/totalspaces#{version.major}.xml",
            checkpoint: '288cf8fb910b4a9c7268a879c294f2e9c5d14b38407d30b8805a148263eac0e1'

    installer manual: "TotalSpaces#{version.major}.app"

    uninstall pkgutil: "com.binaryage.TotalSpaces#{version.major}",
              script:  {
                         executable: "TotalSpaces#{version.major} Uninstaller.app/Contents/MacOS/TotalSpaces#{version.major} Uninstaller",
                         args:       ['--headless'],
                         sudo:       true,
                       },
              quit:    "com.binaryage.TotalSpaces#{version.major}"
  end

  name 'TotalSpaces'
  homepage 'https://totalspaces.binaryage.com/'

  uninstall signal: [
                      ['INT', 'com.binaryage.totalspacescrashwatcher'],
                      ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                    ]
end
