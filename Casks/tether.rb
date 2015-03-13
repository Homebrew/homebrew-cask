cask :v1 => 'tether' do
  version '1.2.0'
  sha256 '2ac0acbe47a2d348730bb132e202f2ad7eebf6d1be3f597e6ddc8cab0db597d2'

  url 'http://hellotether.com/downloads/tether.zip'
  name 'Tether'
  homepage 'http://hellotether.com/'
  license :gratis

  app "Tether_v#{version}.app"
end
