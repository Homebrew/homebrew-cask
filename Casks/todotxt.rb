cask :v1 => 'todotxt' do
  version '1.2.6'
  sha256 '65cc45d5a341010e4c9c6d4705757e909a30bec7e48c44cee399367e641dede5'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  # todo enable name
  # name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  tags :name => 'TodoTxtMac'

  app 'TodoTxtMac.app'
end
