cask :v1 => 'weka' do
  version '3.6.11'
  sha256 '51643edc349f46d76b96460ab16b97cf8e2d63ae6a4f6e5ba4c89dd404b56cea'

  url "https://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.','-')}-oracle-jvm.dmg"
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :oss

  app 'weka-3-6-11-oracle-jvm.app'
end
