class Totalspaces < Cask

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
    version '2.2.9'
    sha256 '66656dab328455906fd6e757bd966efac7d3a364b66155c847de55bfc57d8f14'

    url "http://downloads.binaryage.com/TotalSpaces2-#{version}.dmg"

    app 'TotalSpaces2.app'

  end

  homepage 'http://totalspaces.binaryage.com/'
  license :unknown
end
