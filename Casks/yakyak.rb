cask 'yakyak' do
  version '1.5.0'
  sha256 'c465634ced9dc21924ef299e7200ec7208b5ec685468c3f1c5c887ddb7ca80d5'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '55ec10da868d87d6566058e5af1e1b7e3d66286ff2d7dea40f53879a75938b57'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
