cask 'vassal' do
  version '3.2.15'
  sha256 '936f7eeda9ee19c78708102e647aa43b91bfd70690da2552c72a28d5fbd10541'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  name 'VASSAL'
  homepage 'http://www.vassalengine.org'
  license :gpl

  app 'VASSAL.app'
end
