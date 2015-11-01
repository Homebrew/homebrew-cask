cask :v1 => 'viewit' do
  version '2.52'
  sha256 '66813bb951b2bc015c094069f602600d4e8475ba08d9b2a44d758c483cebfd81'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.dmg"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
