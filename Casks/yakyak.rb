cask 'yakyak' do
  version '1.3.1'
  sha256 '2c4f2fc583aff1d093b2290874f3b19f32b3f19134c2a7947f56e72f96ac077d'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '3e3296cb8a596a93ca23e6ca762024bcae68465680ec76bd0a092ca4d5c0aebc'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
