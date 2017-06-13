cask 'visit' do
  version '2.12.2'
  sha256 '087316bf69f1409def639832bc345021c87394c78015ac436d77d1e91abd7d0a'

  # portal.nersc.gov/project/visit was verified as official when first introduced to the cask
  url "https://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables',
          checkpoint: '6df36aa856eabb5ef8cde95339e46febfe71f6fc06e4e5b48ec7685d4bbc5ab4'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :mountain_lion'

  app 'VisIt.app'
end
