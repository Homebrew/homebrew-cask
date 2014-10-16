class Xact < Cask
  version '2.33'
  sha256 'bd828a3ed879442bf76564fc97c117bee8d49bddabaf3c066413f3dd9e27d714'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => '34ffb3d8d71700bf3f497f809b0ef5c7b1ac8ba623c7e337d8e17050616dd367'
  homepage 'http://xact.scottcbrown.org'
  license :unknown

  app "xACT #{version}/xACT.app"
end
