cask 'the-mut' do
  version '4.0.0'
  sha256 '95a805ae455aeae67f2d3a0db2210cf4a25adefe5a9d01ab724ced3d36d1a555'

  # m-lev.com/uploads was verified as official when first introduced to the cask
  url "http://m-lev.com/uploads/TheMUT_#{version.dots_to_underscores}.dmg"
  name 'The MUT'
  homepage 'https://jssmut.weebly.com/'

  app 'The MUT.app'
end
