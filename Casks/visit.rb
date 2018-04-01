cask 'visit' do
  version '2.13.0'
  sha256 'e04668ee5bdfcb352e238eca579543ec548c995d4a9e1ce0d4b5be2877bfb045'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}-10.11.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: 'af9ad999de6149081917bc2f37a2ab0de3527b442d5e8cee8372e20735a02f18'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
