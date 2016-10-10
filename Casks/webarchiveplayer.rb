cask 'webarchiveplayer' do
  version '1.4.1'
  sha256 'dc5bc702800c913c8781f9c23074156003bc991d4c3aeffdb5add0f51e05cdb6'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: 'afa19ab62477ff8a21dde5e4704c78e1ae2d6ba027c43d53d13e6d970c3a38e6'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
