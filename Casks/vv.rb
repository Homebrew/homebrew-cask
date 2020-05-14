cask 'vv' do
  version '2.2.1'
  sha256 'be2c837b078ac2199f1c2a4862a94ed4f71aacdf0012ee784907a650abe88972'

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast 'https://github.com/vv-vim/vv/releases.atom'
  name 'VV'
  homepage 'https://github.com/vv-vim/vv'

  depends_on formula: 'neovim'

  app 'VV.app'
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: '~/Library/Application Support/VV'
end
