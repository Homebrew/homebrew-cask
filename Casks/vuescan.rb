class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 'd893cb9982fe637ea08be5075e4db4a4407cfe451832bb2496fa9b30928f9508'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 'cc6e6627f90ae084b9dbadb41dab016db51c97b445710b8e93b404c4afe0e91f'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.29'
  link 'VueScan.app'
end
