cask 'yakyak' do
  version '1.2.0'
  sha256 'f568fb4858e5f824541e789b9c2d2963eec3b5227807b58cbebcd9d9afa3eeb5'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '9635251571e242909a1bf0922ca65aea949ff6028c7bf222cb453072836a2c0e'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
