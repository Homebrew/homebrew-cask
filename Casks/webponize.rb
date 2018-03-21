cask 'webponize' do
  version '2.3.0'
  sha256 '490d39d212c71b077a9bc65cc0657bb9ba030ab7ed55f0b79fb6330dafdf24df'

  # github.com/webponize/webponize was verified as official when first introduced to the cask
  url "https://github.com/webponize/webponize/releases/download/v#{version}/WebPonize.app.zip"
  appcast 'https://github.com/webponize/webponize/releases.atom',
          checkpoint: '139670e55ade776738ac9bfee428e6d8623ef83093311cfbcc86b0af61cc58f5'
  name 'WebPonize'
  homepage 'https://webponize.org/'

  app 'WebPonize.app'
end
