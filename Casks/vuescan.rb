class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 '683c6c226cef941d54589e4726dc71d4deeb3207cb5d468303fbc68290b37d94'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 '768d5e568d84097984e7bd55b3d6a93ee38a3856e7bab3a8fad7b005d0b17669'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.32'
  link 'VueScan.app'
end
