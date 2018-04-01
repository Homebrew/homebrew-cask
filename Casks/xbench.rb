cask 'xbench' do
  version '1.3'
  sha256 '285d860273b22054b807930ac496735e287d124f233da489e4104d2411690e55'

  url "http://xbench.com/Xbench_#{version}.dmg"
  appcast 'http://xbench.com/',
          checkpoint: '8df068ebd3ee00adf16d6c7095c8e9312d49996cc864617b51b5a6cd8f64d814'
  name 'Xbench'
  homepage 'http://xbench.com/'

  app 'XBench.app'
end
