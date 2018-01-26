cask 'wavesurfer' do
  version '1.8.8p5'
  sha256 '798f0eb2c542742892d1541554ff58245040b49c450ba93fbdcaacca129e8dca'

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-osx-i386.dmg"
  appcast 'https://sourceforge.net/projects/wavesurfer/rss',
          checkpoint: '2765fb7d69157d742529e0fdf2adbec8648aecf56ad1b30bd57c33e555001f68'
  name 'WaveSurfer'
  homepage 'https://sourceforge.net/projects/wavesurfer/'

  app 'WaveSurfer.app'
end
