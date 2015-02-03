cask :v1 => 'vivaldi' do
  version '1.0.83.38'
  sha256 '1cffe405d04a477e3c8d3901259e855c782920569bd0ff59cc1cb98a46706698'

  url "http://vivaldi.com/download/Vivaldi_TP_#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
