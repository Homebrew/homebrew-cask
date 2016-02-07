cask 'yakyak' do
  version '1.1.2'
  sha256 'fdc75ee76d72b15f558dd7e3cbe91e030341593b4a357faebc5651ade4dceeb2'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'ab55f11293880f372add0b979e40aba6ed6bbaaff17617c04840b7f6188c714b'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
