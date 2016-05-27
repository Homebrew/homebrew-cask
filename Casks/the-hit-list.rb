cask 'the-hit-list' do
  version '1.1.23,332'
  sha256 '65bfec0840e4b54b708fb33bc3e0abb82ec57e23ef082dca0221c18bcd61004c'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '67dc7f507ee4479bdd49711f36b4fe786e66de67911eb46d3ee07f36f2bfdf90'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
