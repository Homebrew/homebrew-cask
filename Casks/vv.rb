cask 'vv' do
  version '2.2.0'
  sha256 'c8ad6f262aff9a72f9515a7f6ce6ec9eb5c7e46710158efe4953b30340bdc65f'

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast 'https://github.com/vv-vim/vv/releases.atom'
  name 'VV'
  homepage 'https://github.com/vv-vim/vv'

  depends_on formula: 'neovim'

  app 'VV.app'
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: '~/Library/Application Support/VV'
end
