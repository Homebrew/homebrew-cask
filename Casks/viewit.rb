cask :v1 => 'viewit' do
  version '2.51'
  sha256 '4558ec864234f2cd1037a345c7daea86fcc4f4e423a8ca093f9d31275f570f5d'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.dmg"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
