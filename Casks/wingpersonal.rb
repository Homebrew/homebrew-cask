cask 'wingpersonal' do
  version '7.0.3.0'
  sha256 'a1c4efdd883fbf26712de48f82e674b45fb168e912e6e7dfdd891f1bcad3c874'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
