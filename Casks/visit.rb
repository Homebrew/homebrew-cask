cask :v1 => 'visit' do
  version '2.9.2'
  sha256 '9dc908c9d298f65ba4be58b5772338c92bc771043054e8eb2979c77a8a56f865'

  # nersc.gov is the official download host per the vendor homepage
  url "http://portal.nersc.gov/project/visit/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'
  license :bsd

  app 'VisIt.app'

  depends_on :macos => '>= :mountain_lion'
end
