cask 'therm' do
  version '0.1.8'
  sha256 'b83448377566beab5600f716c0503f54ae0151c45c3b5e0fed723560fedaa19b'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
