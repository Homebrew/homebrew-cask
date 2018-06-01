cask 'yakyak' do
  version '1.5.0'
  sha256 '8b721e851f6fae7321b9298731c5d6f6bf7fdcdf731b9db762b73a85d4c4ff6f'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'e7f8a71c36ea95302637fc5d7d6f1b952085bb052c212d6418bc68dae1521190'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
