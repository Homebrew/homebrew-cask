cask 'visit' do
  if MacOS.version <= :high_sierra
    version '3.1.1'
    sha256 '4213daed23de17ee8bcfba779a96cce3ef92d3075ae666f7aeaffa824d484924'

    # github.com/visit-dav/visit/ was verified as official when first introduced to the cask
    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10.13.dmg"
  else
    version '3.1.2'
    sha256 '10a8c52d947f4c1adea820238775273da3d60a1b2484d5cbd4fe5781451f567d'

    # github.com/visit-dav/visit/ was verified as official when first introduced to the cask
    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10_14.dmg"
  end

  appcast 'https://wci.llnl.gov/simulation/computer-codes/visit/executables'
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'

  depends_on macos: '>= :el_capitan'

  app 'VisIt.app'
end
