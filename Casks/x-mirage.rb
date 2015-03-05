cask :v1 => 'x-mirage' do
  version :latest
  sha256 :no_check

  url 'http://dl.x-mirage.com/x-mirage.dmg'
  homepage 'http://www.x-mirage.com/x-mirage/'
  license :commercial

  app 'X-Mirage.app'
end
