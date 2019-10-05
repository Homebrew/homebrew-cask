cask 'visit' do
  version '3.0.2'
  sha256 'e2c8dbcc4d7b73992077bdbac21c53591444d70f9d04cb11f6bbde89a35a8ea2'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/visit#{version}.darwin-x86_64-10_13.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
