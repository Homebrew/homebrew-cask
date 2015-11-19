cask :v1 => 'wavtap' do
  version '0.3.0'
  sha256 'b114703e407ce269070165421a81f74e64ac1730a85d829c148325b4ac1a18f6'

  url "https://github.com/pje/WavTap/releases/download/#{version}/WavTap.#{version}.pkg"
  name 'WavTap'
  homepage 'https://github.com/pje/wavtap'
  license :mit

  pkg "WavTap.#{version}.pkg"

  uninstall :pkgutil => 'com.wavtap.*',
            :kext => 'com.wavtap.driver.WavTap'
end
