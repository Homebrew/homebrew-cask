cask 'yakyak' do
  version '1.3.0'
  sha256 '620727f86960d4b59e25f71e0b8ef0580b10c49c98a688f91e442356578c9cfe'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'a37c0808ae1e3fe67de41c58701085dd5868e6378b0f9ec4ba02ffd3f75e2b85'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
