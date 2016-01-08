cask 'xact' do
  version '2.37'
  sha256 '3d0fcc4f35ec515f39230d6e30cb87e899a9a6a09f36984da1781ecdf0535e45'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => 'cb5df4e8d11f77927b2ebc9dd0281426252f7feb8abb5ec62fa3819748344a45'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
