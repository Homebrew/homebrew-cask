cask 'voxengo-span-au' do
  version '2.10'
  sha256 '48cf467a2d3b3be87b4b6ab725dd10f6ecf98cb8bceb090c4b2920989f33d413'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name 'Voxengo SPAN (AU)'
  homepage 'https://www.voxengo.com/product/span/'

  audio_unit_plugin 'SPAN.component'
end
