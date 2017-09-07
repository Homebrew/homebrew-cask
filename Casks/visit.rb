cask 'visit' do
  version '2.12.3'
  sha256 '1b057d50caf835bb25052f8277db080bbd8918b840e363a2e575a0b013b7fb3f'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: '7517244498494b4822c1c405ed0c95ece2bd5e7964a1cf5f2610ec10a09c7652'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
