cask :v1 => 'wireover' do
  version :latest
  sha256 :no_check

  url 'https://router.wireover.com/app/WireOver.dmg'
  name 'WireOver'
  homepage 'http://www.wireover.com/'
  license :gratis

  app 'WireOver.app'
end
