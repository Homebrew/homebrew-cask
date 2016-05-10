cask 'trailer' do
  version '1.3.20'
  sha256 '17d49464f6c4636b0c58c69e4b16f0132fb2e2a2cc3164f50a9ed57a4d54a890'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'ac98df74286154a41c934ddd5b8012683a6f3cf250937a73a932593adb9c2f48'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
