cask 'the-mut' do
  version '3.6.0'
  sha256 '578ed3e13ef57238d0649e25f4fe523115e483cf2b22960eb07da81767df0b72'

  # m-lev.com/uploads was verified as official when first introduced to the cask
  url "http://m-lev.com/uploads/TheMUT#{version.no_dots}.dmg"
  name 'The MUT'
  homepage 'https://jssmut.weebly.com/'

  app 'The MUT.app'
end
