cask 'the-mut' do
  version '4.2.1'
  sha256 'e72be15dd1923b95dd51e60cf826290f79128688e2f1762f98d46b753d1bce51'

  # m-lev.com/uploads was verified as official when first introduced to the cask
  url "https://m-lev.com/uploads/TheMUT_#{version.dots_to_underscores}.dmg"
  appcast 'https://jssmut.weebly.com'
  name 'The MUT'
  homepage 'https://jssmut.weebly.com/'

  app 'The MUT.app'
end
