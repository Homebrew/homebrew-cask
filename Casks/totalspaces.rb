class Totalspaces < Cask
  if MacOS.version == :mavericks
    url "http://downloads.binaryage.com/TotalSpaces2-2.1.10.zip"
    version '2.1.10'
    install 'TotalSpaces2.pkg'
    sha256 '1bc4a282f13ffd8473646fcab11da279bc741634d3a322fa3039cd223f052489'
    uninstall :pkgutil => 'com.binaryage.TotalSpaces2',
              :quit    => 'com.binaryage.TotalSpaces2',
              :signal  => [
                           ['INT', 'com.binaryage.totalspacescrashwatcher'],
                           ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                          ]
  else
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
  end
  homepage 'http://totalspaces.binaryage.com/'
end
