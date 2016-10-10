cask 'visit' do
  version '2.10.2'
  sha256 'fc621ff86a81a04d92535a268a87e66206c21ae011a2fa91d94020c981d4a3cf'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
