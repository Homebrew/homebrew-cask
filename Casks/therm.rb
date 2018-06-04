cask 'therm' do
  version '0.1.7'
  sha256 '465c225ef5c4289eb0176bc118ec16629390aa2fc114ffd53b2faa19eb6af009'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: 'f1a90097be98412d23fe0f31b47f2347504c56e751ce9dd3636dc1339cd9e7f4'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
