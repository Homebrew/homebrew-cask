cask :v1 => 'zeroad' do
  version '0.0.17-alpha'
  sha256 '7493a8775946f56482939ee51d96ae41a7a8e114ccf050e1406ff4ebf5cb6a7f'

  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  homepage 'http://www.play0ad.com/'
  license :unknown

  app '0ad.app'
end
