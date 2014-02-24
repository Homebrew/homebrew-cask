class Wavtap < Cask
  url 'https://github.com/downloads/pje/WavTap/WavTap%200.2.0.pkg'
  homepage 'https://github.com/pje/wavtap'
  version '0.2.0'
  sha256 'ae4bbdb82c2b04ab7fa9995ed688b59d79e91f67122ed405409f19d74e7f60e5'
  install 'WavTap 0.2.0.pkg'
  uninstall :pkgutil => 'com.wavtap.*', :kext => 'com.wavtap.driver.WavTap'
end
