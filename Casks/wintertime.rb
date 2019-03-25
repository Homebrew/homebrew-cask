cask 'wintertime' do
  version '0.0.4'
  sha256 '56634e373caacf97fdc7d406d4665c78f08435d4838be4a0ce70eb8b16ff29ae'

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  appcast 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom'
  name 'Wintertime'
  homepage 'https://github.com/actuallymentor/wintertime-mac-background-freezer'

  app 'Wintertime.app'
end
