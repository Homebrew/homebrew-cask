cask 'todotxt' do
  version '2.0.0'
  sha256 'b859e8fa3a2fabe3743ce85a29bf1243b29b1552271a5660b2c6c1571576c601'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: '5490bd8ddb040bc53852d5d4ef1719015e3182442431bbf0523dbc49843ea739'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
