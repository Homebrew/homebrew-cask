cask 'therm' do
  version '0.1.9'
  sha256 '99b081c24afcd298fec724a46054154e20b6a0cbbbbd2e15f07ec74bb3f32e7e'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
