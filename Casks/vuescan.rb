class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 '90171bc8736cfb874381b16eba407458802f4d99d199bfbdbc7d28d03963ade1'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 '766404fe3d2f58b4848e5f6085e27fd6018d4854fdf921964803ebc5f4d2a4f6'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.29'
  link 'VueScan.app'
end
