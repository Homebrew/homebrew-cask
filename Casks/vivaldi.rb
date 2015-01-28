cask :v1 => 'vivaldi' do
  version '1.0.83.38'
  sha256 '54682a12066ab6b446003d3c1735e7504136a043d0dc913e510f614370de15a9'

  url "http://vivaldi.com/download/Vivaldi_TP_#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
