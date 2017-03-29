cask 'visit' do
  version '2.12.1'
  sha256 '95c4dc58a9a6994c69e810dc264d7992addf1b19b6fbd6b4286302586462bff1'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: 'd1652e31f41d271e7290841db291be88f269eb1d3f143bec7871bbbbc3b723e9'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
