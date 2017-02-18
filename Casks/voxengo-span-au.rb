cask 'voxengo-span-au' do
  version '3.0'
  sha256 'fad219f7e9d0ca65d82b4e12d64b693c27367f5b3e903b7fdba8674e986fdab2'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name 'Voxengo SPAN (AU)'
  homepage 'https://www.voxengo.com/product/span/'

  audio_unit_plugin 'SPAN.component'
end
