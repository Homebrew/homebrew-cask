cask 'visit' do
  version '3.1.0'
  sha256 '5da96f81f82d680f7c510b41f80fb5030f32436a54f59f39371eb1464c021912'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/visit#{version}.darwin-x86_64-10_13.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
