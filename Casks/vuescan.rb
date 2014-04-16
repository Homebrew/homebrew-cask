class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 'adcc812618f5539e258fb59425f400e2f90876bc9c8ecbfc56161f81daf13141'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 '3bc9d968c5e6e6cd9ffa772a1d7f052313b57a11daeabd22f74f996712ce5304'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.28'
  link 'VueScan.app'
end
