cask 'todotxt' do
  version '2.2.2'
  sha256 '91ccf75682c41f08daba0a3e4ee9151770229cfbbb181ba85021096b9f2baf69'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: '6ae879807479d646a7b710b1299563ef439687dd085817e245175ad1c5843a75'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
