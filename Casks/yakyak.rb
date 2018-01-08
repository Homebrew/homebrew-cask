cask 'yakyak' do
  version '1.5.0'
  sha256 'c52e833aaffbc2d4ec05d4a00b7e852ac14b6905b1ebeec044fabf325c4578fb'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '50e926210260f0821aa210704f2b92ef094feac07130d939c29fe52250ca595e'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
