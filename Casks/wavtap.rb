cask :v1 => 'wavtap' do
  version '0.2.0'
  sha256 'ae4bbdb82c2b04ab7fa9995ed688b59d79e91f67122ed405409f19d74e7f60e5'

  url "https://github.com/downloads/pje/WavTap/WavTap%20#{version}.pkg"
  name 'WavTap'
  homepage 'https://github.com/pje/wavtap'
  license :mit

  pkg "WavTap #{version}.pkg"

  uninstall :pkgutil => 'com.wavtap.*', :kext => 'com.wavtap.driver.WavTap'
end
