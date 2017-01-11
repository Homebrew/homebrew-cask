cask 'voxengo-span-vst' do
  version '3.0'
  sha256 'ce4b3e2e7e5aa015b6323976c42443d05127724bd3e78dbdddf0c9c26e04495c'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name 'Voxengo SPAN (VST)'
  homepage 'https://www.voxengo.com/product/span/'

  vst_plugin 'SPAN.vst'
  vst3_plugin 'SPAN.vst3'
end
