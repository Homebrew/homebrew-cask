cask 'webarchiveplayer' do
  version '1.4.5'
  sha256 'dc5bc702800c913c8781f9c23074156003bc991d4c3aeffdb5add0f51e05cdb6'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: '83f4f76661fddb0fb06f946c43b1291ee57e51690430bbc77bd1f6d177ec2b70'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
