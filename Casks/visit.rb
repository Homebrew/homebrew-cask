cask 'visit' do
  version '2.12.1'
  sha256 '95c4dc58a9a6994c69e810dc264d7992addf1b19b6fbd6b4286302586462bff1'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: '6d1f16f2a61085c04db7dea62820ffb8dd63306eb3930588b5a1c19a43b317cd'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
