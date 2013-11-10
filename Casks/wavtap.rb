class Wavtap < Cask
  url 'https://github.com/downloads/pje/WavTap/WavTap%200.2.0.pkg'
  homepage 'https://github.com/pje/wavtap'
  version '0.2.0'
  sha1 '9d71dcf769dd546d66278dc9cbf675df6b006fe6'
  install 'WavTap 0.2.0.pkg'
  uninstall :pkgutil => 'com.wavtap.*', :kext => 'com.wavtap.driver.WavTap'
end
