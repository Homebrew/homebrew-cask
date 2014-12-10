cask :v1 => 'uber-network-fuser' do
  version '1.701'
  sha256 'd2f919a466d093da30e66a664d716a96ea0e1167c887ace8fb30d2e55c6c3c7d'

  # dropbox.com is the official download host per the vendor homepage
  url "https://dl.dropbox.com/s/uytv8p2eljk6fez/ubernetfuser_#{version}.dmg"
  homepage 'http://nickapedia.com/2012/01/10/breaking-new-ground-an-uber-tool-for-the-mac/'
  license :unknown    # todo: improve this machine-generated value

  app "UBER Network Fuser #{version}.app"
end
