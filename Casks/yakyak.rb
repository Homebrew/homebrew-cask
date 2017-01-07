cask 'yakyak' do
  version '1.4.1'
  sha256 '84ea0423d7262df947a3ae9162c75ba7f0d5d5451fd05e6e13bd8c921c76bacb'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'fc6fcc04a790d974a656ebc58e4d232f16401ae6a9307e5703627468aad5bf3f'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
