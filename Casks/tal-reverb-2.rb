cask 'tal-reverb-2' do
  version :latest
  sha256 :no_check

  url 'https://tal-software.com/downloads/plugins/TAL-Reverb-2-installer.pkg'
  name 'TAL-Reverb-2'
  homepage 'https://tal-software.com/products/tal-reverb'

  pkg 'TAL-Reverb-2-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Reverb-4-AAX',
                       'com.talsoftware.pkg.TAL-Reverb-4-AU',
                       'com.talsoftware.pkg.TAL-Reverb-4-VST',
                     ]
end
