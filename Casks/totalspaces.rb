class Totalspaces < Cask
  url 'http://downloads.binaryage.com/TotalSpaces-1.2.11.zip'
  homepage 'http://totalspaces.binaryage.com/'
  version '1.2.11'
  sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'
  install 'TotalSpaces.pkg'
  uninstall :pkgutil => 'com.switchstep.totalspaces',
            :quit    => 'com.binaryage.TotalSpaces',
            :signal  => [
                         ['INT', 'com.binaryage.totalspacescrashwatcher'],
                         ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                        ]
  caveats do
    os_version_only '10.8', '10.7'
  end
end
