cask 'visit' do
  version '2.12.0'
  sha256 '060ada90328827aed9d5a175aade5e5e243ad99881749c9a360d980bd46d870d'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
