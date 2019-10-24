cask 'vv' do
  version '1.7.2'
  sha256 '6822cd5940fa55bc59b57ac30e114c5840e4f9f47758b9d89666013b42f2304a'

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  appcast 'https://github.com/vv-vim/vv/releases.atom'
  name 'VV'
  homepage 'https://github.com/vv-vim/vv'

  depends_on formula: 'neovim'

  app 'VV.app'
  binary 'VV.app/Contents/Resources/bin/vv'

  zap trash: '~/Library/Application Support/VV'
end
