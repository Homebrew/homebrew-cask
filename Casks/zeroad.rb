cask :v1 => 'zeroad' do
  version '0.0.16-alpha'
  sha256 'c68d43559752bfff1ee9b5b42ec951e435aca2a6bd8ee6bd7f99fbcdc5989455'

  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  homepage 'http://www.play0ad.com/'
  license :unknown

  app '0ad.app'
end
