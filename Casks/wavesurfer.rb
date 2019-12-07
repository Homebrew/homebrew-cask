cask 'wavesurfer' do
  version '1.8.8p6'
  sha256 '612cede095ffd6eee9b53bf29246ad8af778753cba907300db42770e4631e56a'

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-macos.dmg"
  appcast 'https://sourceforge.net/projects/wavesurfer/rss'
  name 'WaveSurfer'
  homepage 'https://sourceforge.net/projects/wavesurfer/'

  app 'WaveSurfer.app'
end
