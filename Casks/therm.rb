cask 'therm' do
  version '0.1.5'
  sha256 '3c31a55acdf4b2ed769157edd5d7b4dc0a98baa2a2e8e91084236285cd6b5523'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: '98f72f9c91e5a999da03cfdb9ca3e417928f26fa2eee32526828e9f00a9d5c7a'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
