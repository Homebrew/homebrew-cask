cask :v1 => 'totalspaces' do

  if MacOS.version < :mavericks
    version '1.2.11'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"

    pkg 'TotalSpaces.pkg'
    uninstall :pkgutil => 'com.switchstep.totalspaces',
              :quit    => 'com.binaryage.TotalSpaces',
              :signal  => [
                           ['INT', 'com.binaryage.totalspacescrashwatcher'],
                           ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                          ]
  else
    version '2.2.6'
    sha256 '900ece3f5ceae479b4019f854e1875eb402edf3ef1b17f813a70fe42290a0a12'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"

    pkg 'TotalSpaces2.pkg'
    uninstall :pkgutil => 'com.binaryage.TotalSpaces2',
              :quit    => 'com.binaryage.TotalSpaces2',
              :signal  => [
                           ['INT', 'com.binaryage.totalspacescrashwatcher'],
                           ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                          ]
  end

  homepage 'http://totalspaces.binaryage.com/'
  license :unknown
end
