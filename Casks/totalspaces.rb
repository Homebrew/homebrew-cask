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
    version '2.5.4'
    sha256 '8b53eea81e432df5a61ccdc0c9e727cd4e7c2bb265db454d536356c106bdc5c0'

    url "http://downloads.binaryage.com/TotalSpaces#{version.major}-#{version}.dmg"
    appcast "http://updates-s3.binaryage.com/totalspaces#{version.major}.xml",
            checkpoint: 'b3650a22599c6be19c377b65f1c1f838acb6222b254c7b8616785a099e28398d'

    installer manual: "TotalSpaces#{version.major}.app"

    uninstall pkgutil: "com.binaryage.TotalSpaces#{version.major}",
              script:  {
                         executable: "TotalSpaces#{version.major} Uninstaller.app/Contents/MacOS/TotalSpaces#{version.major} Uninstaller",
                         args:       %w[--headless],
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
