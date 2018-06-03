cask 'wavesurfer' do
  version '1.8.8p5'
  sha256 'f14765e4b5ee015c9199081de75934900c55358af8925e8debc345023b91aa96'

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-osx-i386.dmg"
  appcast 'https://sourceforge.net/projects/wavesurfer/rss',
          checkpoint: 'c22098f7064552253a87b04af509287b1d3b10d4f4eabb443f13ee36fd659f40'
  name 'WaveSurfer'
  homepage 'https://sourceforge.net/projects/wavesurfer/'

  app 'WaveSurfer.app'
end
