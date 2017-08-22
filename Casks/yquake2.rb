cask 'yquake2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '7.01'
  sha256 '2a11f9b44dd60ed23867df9f26b87f1ca9d367c6a33b92c69f20f9df52ba5ec0'

  url "https://deponie.yamagi.org/quake2/osx/quake2-#{version}.dmg"
  name 'Yamagi Quake II'
  homepage 'https://www.yamagi.org/quake2/'

  app 'Quake 2.app'

  caveats <<-EOS.undent
    To complete the installation of #{token}, you will have to follow the instructions at https://github.com/yquake2/yquake2#installation and copy the necessary support files into

    #{appdir}/Quake\ 2.app/Contents/Resources
  EOS
end
