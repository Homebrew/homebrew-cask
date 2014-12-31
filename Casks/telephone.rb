cask :v1 => 'telephone' do
  version '0.15.2'
  sha256 '21191c1d72b425a2aa5a065678bf862c235974727aa6184c51eec540f41cb43d'

  url "https://telephone.googlecode.com/files/Telephone-#{version}.dmg"
  homepage 'https://code.google.com/p/telephone/'
  license :oss

  app 'Telephone.app'
end
