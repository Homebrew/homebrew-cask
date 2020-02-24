cask 'vv' do
  version '2.1.0'
  sha256 '7a5d478dbfc3447059a5e157726ad5fd2ca28a5895089013e332e0cc0d9def1b'

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast 'https://github.com/vv-vim/vv/releases.atom'
  name 'VV'
  homepage 'https://github.com/vv-vim/vv'

  depends_on formula: 'neovim'

  app 'VV.app'
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: '~/Library/Application Support/VV'
end
