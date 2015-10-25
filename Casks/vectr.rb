cask :v1 => 'vectr' do
  version '0.1.7'
  sha256 '8416736f29f1b2e72d8d4595386bce554bb4ccbc49b27f92a86c6febabfbc35e'

  url "http://download.vectr.com/desktop/vectr-mac-#{version}.zip"
  name 'Vectr'
  homepage 'https://vectr.com'
  license :gratis

  app 'Vectr.app'
end
