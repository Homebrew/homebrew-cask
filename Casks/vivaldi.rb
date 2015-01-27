cask :v1 => 'vivaldi' do
  version '1.0.83.38'
  sha256 '84153229b9d59561c9d6f570aa77875ed8b410ff43d2b4298167a0dc300b2a59'

  url "http://vivaldi.com/download/Vivaldi_TP_#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
