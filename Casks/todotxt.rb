cask 'todotxt' do
  version '2.4.0'
  sha256 '67f94669661e5b2186f3b619465d18206d8e20ae082d672c86b17d766f59fd41'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: 'b75adba5d0ea0269b85cc3287acad5e507d2e2286e9fbe250c6267c4d633dcf4'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'

  app 'TodoTxtMac.app'
end
