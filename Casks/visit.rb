cask 'visit' do
  version '2.13.1'
  sha256 '8956f047277c1e30f7d33233fae14f5fca12f261150480100a6db27bb445eb3e'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}-10.11.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: '8a3443e23de3dfddee12ed1187566e651cd5a642d66b30dec849705b713722a4'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
