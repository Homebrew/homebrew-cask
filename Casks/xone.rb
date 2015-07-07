cask :v1 => 'xone' do
  version '1.0.4'
  sha256 '6410ffed69dfad12194468587aca7804800e9f58187fe112ee1a65b1f02a8c27'

  url "https://github.com/FranticRain/Xone-OSX/releases/download/v#{version}/Xone-Driver-#{version}.dmg"
  appcast 'https://github.com/FranticRain/Xone-OSX/releases.atom'
  name 'xone'
  name 'xbox-one-controller-driver'
  homepage 'https://github.com/FranticRain/Xone-OSX'
  license :gpl

  pkg "Xone-Driver-#{version}.pkg", :allow_untrusted => true

  uninstall :kext => 'com.vestigl.driver.Xone-Driver',
            :delete => [
                        '/Library/PreferencePanes/Xone Driver Pref Pane.prefPane',
                        '/Library/Extensions/Xone Driver.kext'
                       ]
end
