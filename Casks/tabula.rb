cask :v1 => 'tabula' do
  version '0.9.5.2'
  sha256 'b6a2663cbf440d27cc94ac9ac05ac1875136e81f63980a25e1acaf6a3250e131'

  url "https://github.com/jazzido/tabula/releases/download/v0.9.5/tabula-mac-#{version}.zip"
  homepage 'http://tabula.nerdpower.org'
  license :mit

  app 'tabula/Tabula.app'
end
