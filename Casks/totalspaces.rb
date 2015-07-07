cask :v1 => 'totalspaces' do

  if MacOS.release <= :mountain_lion
    version '1.2.11'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"

    pkg 'TotalSpaces.pkg'

    uninstall :pkgutil => 'com.switchstep.totalspaces',
              :quit    => 'com.binaryage.TotalSpaces'
  else
    version '2.2.19'
    sha256 'bf2d496ac7d688649fc0a43b4e9d1c8f15c3819a58628dc3aa16c11b1933726e'

    url "http://downloads.binaryage.com/TotalSpaces2-#{version}.dmg"

    installer :manual => 'TotalSpaces2.app'

    uninstall :pkgutil => 'com.binaryage.TotalSpaces2',
              :script  => {
                           :executable => 'TotalSpaces2 Uninstaller.app/Contents/MacOS/TotalSpaces2 Uninstaller',
                           :args       => %w[--headless],
                          },
              :quit    => 'com.binaryage.TotalSpaces2'
  end

  name 'TotalSpaces'
  homepage 'http://totalspaces.binaryage.com/'
  license :commercial

  uninstall :signal  => [
                         ['INT', 'com.binaryage.totalspacescrashwatcher'],
                         ['KILL', 'com.binaryage.totalspacescrashwatcher'],
                        ]
end
