cask 'totalspaces' do
  version '2.6.24'
  sha256 'd1c2a07df31b85648d94cee806448c7e78a6de35eef6635b1ec9fe7627601e91'

  url "http://downloads.binaryage.com/TotalSpaces#{version.major}-#{version}.dmg"
  appcast "http://updates-s3.binaryage.com/totalspaces#{version.major}.xml"
  name 'TotalSpaces'
  homepage 'https://totalspaces.binaryage.com/'

  installer manual: "TotalSpaces#{version.major}.app"

  uninstall pkgutil: "com.binaryage.TotalSpaces#{version.major}",
            script:  {
                       executable: "TotalSpaces#{version.major} Uninstaller.app/Contents/MacOS/TotalSpaces#{version.major} Uninstaller",
                       args:       ['--headless'],
                       sudo:       true,
                     },
            signal:  [
                       ['INT', 'com.binaryage.totalspacescrashwatcher'],
                       ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                     ],
            quit:    "com.binaryage.TotalSpaces#{version.major}"
end
