cask 'unetbootin' do
  version '613,212083654'
  sha256 'b9356ad2ef3cfa6881690ddc1136c45e6d3f25063fdeaeeb477633500b0c7684'

  # launchpadlibrarian.net/212083654/unetbootin-mac-613.zip was verified as official when first introduced to the cask
  url "https://launchpadlibrarian.net/#{version.after_comma}/unetbootin-mac-#{version.before_comma}.zip"
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'
  license :gpl

  app 'unetbootin.app'
end
