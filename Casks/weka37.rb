cask :v1 => 'weka37' do
  version '3.7.12'
  sha256 '3b208053a7feb8297dbcb48b5c951cff18d68859c6962b8b73fe3649b2b60c8e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.','-')}-oracle-jvm.dmg"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.','-')}-oracle-jvm.app"
end
