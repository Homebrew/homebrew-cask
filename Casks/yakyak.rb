cask 'yakyak' do
  version '1.3.0'
  sha256 '620727f86960d4b59e25f71e0b8ef0580b10c49c98a688f91e442356578c9cfe'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'b490d5a1a28fa68b020c6262df04b90c01e63a9910344fb73d06c3ef97555b1c'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
