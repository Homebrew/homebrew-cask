cask 'visit' do
  version '2.13.3'
  sha256 '984d85a597ecd391ff4fcf05fede6d320ef7eb138ce296aa88b7136b0ea1ea50'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
