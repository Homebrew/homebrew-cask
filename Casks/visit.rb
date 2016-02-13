cask 'visit' do
  version '2.10.0'
  sha256 'afc83987a37ab1e330b81f21e123de1f98809057717f25c305331440a940e985'

  # nersc.gov is the official download host per the vendor homepage
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'
  license :bsd

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
