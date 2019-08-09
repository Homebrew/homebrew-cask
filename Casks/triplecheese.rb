cask 'triplecheese' do
  version '1.2.1,3898'
  sha256 'd9a3e5f3e801513a74ec725bfcb722c0df3e96557a6be8813479f9ee73b59f8f'

  # uhedownloads-heckmannaudiogmb.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/TripleCheese_#{version.before_comma.dots_to_underscores}_Mac.zip"
  name 'Triple Cheese'
  homepage 'https://u-he.com/products/triplecheese/'

  pkg "TripleCheese#{version.after_comma}Mac/TripleCheese #{version.before_comma}.#{version.after_comma} Installer.pkg"

  uninstall pkgutil: [
                       'com.u-he.TripleCheese.aax.pkg',
                       'com.u-he.TripleCheese.au.pkg',
                       'com.u-he.TripleCheese.data.pkg',
                       'com.u-he.TripleCheese.documentation.pkg',
                       'com.u-he.TripleCheese.presets.pkg',
                       'com.u-he.TripleCheese.vst.pkg',
                     ]

  caveats do
    reboot
  end
end
