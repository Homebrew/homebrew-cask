cask 'wavesurfer' do
  version '1.8.8p5'
  sha256 '798f0eb2c542742892d1541554ff58245040b49c450ba93fbdcaacca129e8dca'

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-osx-i386.dmg"
  appcast 'https://sourceforge.net/projects/wavesurfer/rss'
  name 'WaveSurfer'
  homepage 'https://sourceforge.net/projects/wavesurfer/'

  app 'WaveSurfer.app'
end
