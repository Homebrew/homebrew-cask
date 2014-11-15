cask :v1 => 'teamviz' do
  version '3.2'
  sha256 '58bbff611e1344c1a0ccb555400c212d0969ad4035469b654437f1adeafa7d37'

  url "http://www.teamviz.com/d/TeamViz.#{version}.dmg"
  homepage 'http://www.teamviz.com/'
  license :unknown

  app 'TeamViz.app'
end
