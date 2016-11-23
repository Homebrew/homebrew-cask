cask 'webarchiveplayer' do
  version '1.4.6'
  sha256 'fb9e9d846ef85f1b626f0c29d6954e1b84732ccf18f467d01255420001ce6ca6'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: '7ddedc7687c1c3b2302ae2569f85b19a69ea91b3680a1b2b21bd89e27b099937'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
