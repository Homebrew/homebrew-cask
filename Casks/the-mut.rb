cask 'the-mut' do
  version '4.1.0'
  sha256 '4fcad3b6b24b76fe322b9e3b3a210abcc843a9bf2b54ca3eab4b21abd5104223'

  # m-lev.com/uploads was verified as official when first introduced to the cask
  url "https://m-lev.com/uploads/TheMUT_#{version.dots_to_underscores}.dmg"
  name 'The MUT'
  homepage 'https://jssmut.weebly.com/'

  app 'The MUT.app'
end
