cask 'therm' do
  version '0.1.6'
  sha256 'd2666b8c60018e0656c1671dccd3cdc75f19f2586a8b283e2a83691bdb963f4d'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: '075d9b956da87b0b46eb15d855cb275dd6b1e35faae9645c9663c0cf3d275fd5'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
