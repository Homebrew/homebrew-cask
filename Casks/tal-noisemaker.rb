cask 'tal-noisemaker' do
  version :latest
  sha256 :no_check

  url 'https://tal-software.com//downloads/plugins/TAL-NoiseMaker-installer.pkg'
  name 'TAL-NoiseMaker'
  homepage 'https://tal-software.com/products/tal-noisemaker'

  pkg 'TAL-NoiseMaker-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-NoiseMaker-AAX',
                       'com.talsoftware.pkg.TAL-NoiseMaker-AU',
                       'com.talsoftware.pkg.TAL-NoiseMaker-VST',
                     ]
end
