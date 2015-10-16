cask :v1 => 'vivaldi' do
  version '1.0.219.53'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://vivaldi.com/download/Vivaldi_TP4.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
