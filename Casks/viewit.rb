cask 'viewit' do
  version '2.53'
  sha256 '7435828ce2b6092aeecf274b7139c423d01f26de3d8a92be2aff9d05a3f83d49'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
