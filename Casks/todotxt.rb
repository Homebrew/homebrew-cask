cask 'todotxt' do
  version '1.6.1'
  sha256 'c3a01cc38058cafec61ada15cc1e48ae09e66d1aded9cd3545eb30a3b14b30cf'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: 'b4201f8617518c5754b85898a1a488b2388d99bea7f25d02ed82e05cf3fc391f'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
