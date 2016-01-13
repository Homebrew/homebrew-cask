cask 'vocabulist' do
  version '2.3'
  sha256 '25a7c55c1b3adda3a5afdf91912e107bb1a437d0a83051812878d359d4a280a6'

  url "http://vocabulistapp.com/downloads/Vocabulist-#{version}.dmg"
  appcast 'http://vocabulistapp.com/downloads/appcast.xml',
          :sha256 => 'f3beeac460e424a0e8cdca3920ad896881b62ebdf981351fdcc321e68a2b5057'
  name 'Vocabulist'
  homepage 'http://vocabulistapp.com/'
  license :oss

  app 'Vocabulist.app'
end
