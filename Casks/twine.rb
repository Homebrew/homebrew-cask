cask :v1 => 'twine' do
  version '2.0.5'
  sha256 'e385a1dfc411186c571620da446bb746989d6dc16c2f126156a13df74ec934f5'

  url "http://twinery.org/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'http://twinery.org/'
  license :gpl

  app 'Twine.app'
end
