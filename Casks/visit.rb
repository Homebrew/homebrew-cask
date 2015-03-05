cask :v1 => 'visit' do
  version '2.8.2'
  sha256 'efd91ce3b3deec5b7703a3ae3cf8a12355b6e27334050b176e56552917221d9f'

  # nersc.gov is the official download host per the vendor homepage
  url "https://portal.nersc.gov/svn/visit/trunk/releases/#{version}/VisIt-#{version}.dmg"
  name 'VisIt'
  homepage 'https://wci.llnl.gov/simulation/computer-codes/visit'
  license :bsd

  app 'VisIt.app'
end
