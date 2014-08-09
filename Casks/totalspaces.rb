class Totalspaces < Cask
  if MacOS.version < :mavericks
    url 'http://downloads.binaryage.com/TotalSpaces-1.2.11.zip'
    version '1.2.11'
    install 'TotalSpaces.pkg'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'
    uninstall :pkgutil => 'com.switchstep.totalspaces',
              :quit    => 'com.binaryage.TotalSpaces',
              :signal  => [
                           ['INT', 'com.binaryage.totalspacescrashwatcher'],
                           ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                          ]
  else
    url "http://downloads.binaryage.com/TotalSpaces2-2.2.6.zip"
    version '2.2.6'
    install 'TotalSpaces2.pkg'
    sha256 '900ece3f5ceae479b4019f854e1875eb402edf3ef1b17f813a70fe42290a0a12'
    uninstall :pkgutil => 'com.binaryage.TotalSpaces2',
              :quit    => 'com.binaryage.TotalSpaces2',
              :signal  => [
                           ['INT', 'com.binaryage.totalspacescrashwatcher'],
                           ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                          ]
  end
  homepage 'http://totalspaces.binaryage.com/'
end
