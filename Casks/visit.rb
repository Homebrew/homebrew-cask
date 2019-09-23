cask 'visit' do
  version '3.0.1'
  sha256 '02777e6bd8dc76872824ce4a0f0d9034d35a6a67f6c1653f8b2f376530263b16'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}-10.13.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
