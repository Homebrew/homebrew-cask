cask 'todotxt' do
  version '2.4.0'
  sha256 '67f94669661e5b2186f3b619465d18206d8e20ae082d672c86b17d766f59fd41'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: 'b0e4bee1ac3637dfd19abcf039d09752d484ea76796a848ead606a3257ac6e3e'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'

  app 'TodoTxtMac.app'
end
