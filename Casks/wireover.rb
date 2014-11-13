cask :v1 => 'wireover' do
  version :latest
  sha256 :no_check

  url 'https://router.wireover.com/app/WireOver.dmg'
  homepage 'http://www.wireover.com/'
  license :unknown

  app 'WireOver.app'
end
