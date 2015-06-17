cask :v1 => 'xone-osx' do
  version '1.0.3'
  sha256 '7dc71593122bbe839d5a642d59943825eb5328287a52061ba1ffac4608051f47'

  url "https://github.com/FranticRain/Xone-OSX/releases/download/v#{version}/Xone-Driver-#{version}.dmg"
  name 'Xone-OSX'
  name 'xbox-one-controller-driver'
  homepage 'https://github.com/FranticRain/Xone-OSX'
  license :gpl

  pkg "Xone-Driver-#{version}.pkg", :allow_untrusted => true

  uninstall :kext => ['com.vestigl.driver.Xone-Driver'],
            :delete => ['/Library/PreferencePanes/Xone Driver Pref Pane.prefPane', '/Library/Extensions/Xone Driver.kext']
end