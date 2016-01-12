cask 'xact' do
  version '2.37'
  sha256 '3d0fcc4f35ec515f39230d6e30cb87e899a9a6a09f36984da1781ecdf0535e45'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => '2cc4afe59c874ae2d0d29e40f23631e439ab7b6181313a17d2ca91edf81a29a7'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
