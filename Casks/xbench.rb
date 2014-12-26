cask :v1 => 'xbench' do
  version '1.3'
  sha256 '285d860273b22054b807930ac496735e287d124f233da489e4104d2411690e55'

  url "http://xbench.com/Xbench_#{version}.dmg"
  homepage 'http://xbench.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'XBench.app'
end
