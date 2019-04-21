cask 'visit' do
  version '3.0.0b'
  sha256 'cb0b8f6e9f59e268eb25aaf5f5135630e01d12b95f329f68a6023a3cb1a9dc6d'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
