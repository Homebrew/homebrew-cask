cask 'tastyworks' do
  version '0.35.0'
  sha256 '2d9aa8eac43b6ab0ad7b3accff28a921662d5c524178deab91e4344424746e19'

  url "https://download.tastyworks.com/desktop/#{version}/tastyworks-#{version}.dmg"
  appcast 'https://tastyworks.com/technology.html'
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  app 'tastyworks.app'
end
