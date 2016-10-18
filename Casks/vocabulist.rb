cask 'vocabulist' do
  version '2.3'
  sha256 '25a7c55c1b3adda3a5afdf91912e107bb1a437d0a83051812878d359d4a280a6'

  url "http://vocabulistapp.com/downloads/Vocabulist-#{version}.dmg"
  appcast 'http://vocabulistapp.com/downloads/appcast.xml',
          checkpoint: '35158af6c993c77043a589e63269df9b3e4c443b78aa5cea62e0d8110e508a75'
  name 'Vocabulist'
  homepage 'http://vocabulistapp.com/'

  app 'Vocabulist.app'
end
