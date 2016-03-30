cask 'visit' do
  version '2.10.1'
  sha256 '29304fabd934da5f6445962c3ee32de725d2c0e6ef693525c4d97cdfa2d9c4a7'

  # nersc.gov is the official download host per the vendor homepage
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'
  license :bsd

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
