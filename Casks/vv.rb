cask 'vv' do
  version '2.0.1'
  sha256 '6937e31c616dbf7481f4788d44ffdf7e3aa0fd7982fffd1be331e9d7475c043c'

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast 'https://github.com/vv-vim/vv/releases.atom'
  name 'VV'
  homepage 'https://github.com/vv-vim/vv'

  depends_on formula: 'neovim'

  app 'VV.app'
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: '~/Library/Application Support/VV'
end
