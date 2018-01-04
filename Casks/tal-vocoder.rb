cask 'tal-vocoder' do
  version :latest
  sha256 :no_check

  url 'https://tal-software.com/downloads/plugins/TAL-Vocoder-2-installer.pkg'
  name 'TAL-Vocoder'
  homepage 'https://tal-software.com/products/tal-vocoder'

  pkg 'TAL-Vocoder-2-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Vocoder-2-AAX',
                       'com.talsoftware.pkg.TAL-Vocoder-2-AU',
                       'com.talsoftware.pkg.TAL-Vocoder-2-VST',
                     ]
end
