cask :v1 => 'visit' do
  version '2.7.2'
  sha256 '3c1f1b201358876c1b23717a1b3a2c5a1777755e3fc7f242c08b53a033402fbc'

  url "https://portal.nersc.gov/svn/visit/trunk/releases/#{version}/VisIt-#{version}.dmg"
  homepage 'https://wci.llnl.gov/codes/visit/home.html'
  license :unknown

  app 'VisIt.app'
end
