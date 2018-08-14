cask 'visit' do
  version '2.13.2'
  sha256 'e7e05ec4393f1f1c944b1963ff8f2619383f506a3b05546c91de61082ba4bb21'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}-10.11.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
