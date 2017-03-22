cask 'wavesurfer' do
  version '1.8.8p5'
  sha256 '961fb77a12d1de94f38b1af896ddd017f65f0bc13f335862cf6392631006bd9a'

  url 'https://downloads.sourceforge.net/wavesurfer/wavesurfer-1.8.8p5-osx-i386.dmg'
  appcast 'https://sourceforge.net/projects/wavesurfer/rss?path=/wavesurfer',
          checkpoint: '620ae6885b402e925edfd9901f176336d056697bf9dc187da55cdb5047cc91bf'
  name 'WaveSurfer'
  homepage 'https://sourceforge.net/projects/wavesurfer'

  app 'WaveSurfer.app'
end
