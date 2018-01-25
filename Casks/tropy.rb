cask 'tropy' do
  version '1.0.4'
  sha256 '8a97c028a025581f92e28e2eb96f503efe00027787a665383c663b62ed26437e'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom',
          checkpoint: '743e9bada47c640bf57cd00f84ae7b11d55d0f7b773d90f8660cfb74078ef472'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
