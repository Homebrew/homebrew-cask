cask 'visit' do
  version '3.1.1'

  if MacOS.version <= :high_sierra
    sha256 '4213daed23de17ee8bcfba779a96cce3ef92d3075ae666f7aeaffa824d484924'

    # github.com/visit-dav/visit was verified as official when first introduced to the cask
    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10.13.dmg"
  else
    sha256 '4bb596c4411dc5f7b19598fc1a1ccaefe227527e2623cd1c628288c12be69d99'

    # github.com/visit-dav/visit was verified as official when first introduced to the cask
    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10_14.dmg"
  end

  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
