cask :v1 => 'totalspaces' do

  if MacOS.release <= :mountain_lion
    version '1.2.11'
    sha256 'fd54c6ea092f6fae2035745959ff6e080953e77ec6c76715e532b4b0352235d4'

    url "http://downloads.binaryage.com/TotalSpaces-#{version}.zip"
    appcast 'http://updates-s3.binaryage.com/totalspaces.xml',
            :sha256 => '6c3149bdef9f537e45c66ffb83e9548bcf87d9be32ab0d0ed23a24df6bcc74ce'

    pkg 'TotalSpaces.pkg'

    uninstall :pkgutil => 'com.switchstep.totalspaces',
              :quit    => 'com.binaryage.TotalSpaces'
  else
    version '2.3.6'
    sha256 '1771d91df0a9fe74fa80425cfb774d8342837ec5fb570d66c3726c96143ac0a9'

    url "http://downloads.binaryage.com/TotalSpaces2-#{version}.dmg"
    appcast 'http://updates-s3.binaryage.com/totalspaces2.xml',
            :sha256 => 'f19340bbfd445a54ef7f501e6dd8193dc9228cb18a642d21dc280d008631cb68'

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
