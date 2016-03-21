cask 'trailer' do
  version '1.3.16'
  sha256 '4004b46c1fb50aab721410ab6bb109afa4eb8cfadc42abfd3183183964654b87'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'eeded65b93ba8a391c14e4b5e60187bc56c56cdbe197005ef1288236aee3bd91'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
