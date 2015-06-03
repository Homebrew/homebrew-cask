cask :v1 => 'weka' do
  version '3.6.12'
  sha256 'a0a8683342c6b367a29f4f2ca226db115e9a603b2ffc91c34525bb0f664d7b8c'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://sourceforge.net/projects/weka/files/weka-3-6-osx/3.6.12/weka-#{version.gsub('.','-')}-oracle-jvm.dmg/download"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.','-')}-oracle-jvm.app"
end
