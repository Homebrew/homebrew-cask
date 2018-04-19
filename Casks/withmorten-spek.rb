cask 'withmorten-spek' do
  version '0.8.2.3'
  sha256 '6426c4c34ac8bcb2fa1020cb295e3c105ca912c853cbbe84d1d196a32bba361b'

  url "https://github.com/withmorten/spek-alternative/releases/download/#{version}/spek-alternative-#{version}.dmg"
  appcast 'https://github.com/withmorten/spek-alternative/releases.atom',
          checkpoint: '02b1d685ab571f66cbe42ec638466034afe5c3b0016ba119a2922ca12197ba14'
  name 'spek-alternative'
  homepage 'https://github.com/withmorten/spek-alternative'

  app 'Spek.app'
end
