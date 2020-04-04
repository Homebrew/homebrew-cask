cask 'tinkerwell' do
  version '2.6.0'
  sha256 '390550d9cd65b6ab0c32533e23f0a7638403d4c28327a1e4c79089fca507d5dd'

  url "https://tinkerwell.app/download/electron/Tinkerwell-#{version}.dmg"
  name 'Tinkerwell'
  homepage 'https://tinkerwell.app/'

  app 'Tinkerwell.app'
end
