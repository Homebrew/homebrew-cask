cask 'tal-reverb-4' do
  version :latest
  sha256 :no_check

  url 'https://tal-software.com/downloads/plugins/TAL-Reverb-4-installer.pkg'
  name 'TAL-Reverb-4'
  homepage 'https://tal-software.com/products/tal-reverb-4'

  pkg 'TAL-Reverb-4-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Reverb-4-AAX',
                       'com.talsoftware.pkg.TAL-Reverb-4-AU',
                       'com.talsoftware.pkg.TAL-Reverb-4-VST',
                     ]
end
