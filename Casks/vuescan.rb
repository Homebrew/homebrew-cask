class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 '040e7abb611bc2bfed2c02c7c8fb08f74ce3618e3e054f1222ff8629cb98a716'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 'fc927be998fa970a6a3d49dfa6f67fae1e5bd3486cd1edf8bf762e425bf6c032'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.27'
  link 'VueScan.app'
end
