cask 'virtual-ii' do
  version :latest
  sha256 :no_check

  url 'http://virtualii.com/VirtualII.dmg'
  name 'Virtual ]['
  homepage 'http://virtualii.com/'

  suite 'Virtual ]['

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('Virtual ][').tap(&:mkpath))
  end

  caveats <<-EOS.undent
    This app requires a ROM image, which must be downloaded and installed
    separately. See #{homepage}VirtualIIHelp/virtual_II_help.html#ROMImage
    for more info.
  EOS
end
