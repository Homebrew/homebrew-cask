cask :v1 => 'vivaldi' do
  version '1.0.94.2'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://vivaldi.com/download/Vivaldi_TP2_#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
