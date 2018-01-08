cask 'updateeleaf' do
  version '1.0.3'
  sha256 '0f9946cb9f7ce4be78778f5f3d4ba8d8e53f97d057c6c6f90ad97217f70fc9df'

  url "http://www.eleafworld.com/wp-content/uploads/download/iStick_Pico_V#{version.major_minor}#{version.patch}.pkg.zip"
  name 'UpdateEleaf'
  homepage 'http://www.eleafworld.com/softwares-for-istick-pico/'

  pkg 'UpdateEleaf.pkg'

  uninstall pkgutil: 'com.mygreatcompany.pkg.UpdateEleaf'
end
