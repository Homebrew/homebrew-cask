cask 'x-mirage' do
  version :latest
  sha256 :no_check

  url 'http://dl.x-mirage.com/x-mirage.dmg'
  name 'X-Mirage'
  homepage 'http://www.x-mirage.com/x-mirage/'
  license :commercial

  app 'X-Mirage.app'
end
