cask :v1 => 'viewit' do
  version '2.50'
  sha256 '188f82c1294a2b63f817c3cd1897ff2c43af71d29305a4db614a9378994e7014'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.dmg"
  homepage 'http://www.hexcat.com/viewit/'
  license :unknown    # todo: improve this machine-generated value

  app 'ViewIt.app'
end
