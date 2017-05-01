cask 'vimr' do
  version '0.14.1-182'
  sha256 'c1728b3163a3e2dffdc064cb57776fdadb2f6855dfb590ba8c31f31f663d975d'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '16a9d448bbbfd40f624295e48b9abfdc00690bec95cc0c4bcb5e2ec869858914'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
