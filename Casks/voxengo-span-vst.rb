cask 'voxengo-span-vst' do
  version '31'
  sha256 '3b981b33475fa97dab4016aafb7abc4d892dd7788240d78ba6d23917458db421'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name 'Voxengo SPAN (VST)'
  homepage 'https://www.voxengo.com/product/span/'

  vst_plugin 'SPAN.vst'
  vst3_plugin 'SPAN.vst3'
end
