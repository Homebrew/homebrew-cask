cask :v1 => 'virtual-ii' do
  if MacOS.release <= :leopard
    version '6.3.7'
    sha256 '518c40b94039db64a26664cd8644e0e06dc71e7e8c72ca65294c01836464b770'
    url 'http://virtualii.com/VirtualII_6_3_7.dmg'
  else
    version :latest
    sha256 :no_check
    url 'http://virtualii.com/VirtualII.dmg'
  end

  name 'Virtual ]['
  homepage 'http://virtualii.com/'
  license :freemium

  # There is no sub-folder in the DMG, so we must do some contortions
  preflight do
    FileUtils.mkdir staged_path.join('Virtual ][')
    ['Virtual ][.app', 'Readme.rtf', 'Welcome tape.cass', 'ADT'].each do |file|
      FileUtils.mv staged_path.join(file), staged_path.join('Virtual ][')
    end
  end

  suite 'Virtual ]['

  caveats <<-EOS.undent
    This app requires a ROM image, which must be downloaded and installed
    separately. See #{homepage}VirtualIIHelp/virtual_II_help.html#ROMImage
    for more info.
  EOS
end
