cask 'voxengo-span-au' do
  version '31'
  sha256 '025163dbecae1da3c6ca5984109f3b94ee8fcbc6153242a905fa1a202d133efd'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name 'Voxengo SPAN (AU)'
  homepage 'https://www.voxengo.com/product/span/'

  audio_unit_plugin 'SPAN.component'
end
