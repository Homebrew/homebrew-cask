cask 'voxengo-span-vst' do
  version '2.10'
  sha256 '09f5a195145b5dff81b095bae8af9f3d98e301debe8a0f7732684fd479b20185'

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name 'Voxengo SPAN (VST)'
  homepage 'https://www.voxengo.com/product/span/'

  vst_plugin 'SPAN.vst'
  vst3_plugin 'SPAN.vst3'
end
