cask 'viewit' do
  version '2.56'
  sha256 'e831e59851bcf57d32614bf41084806250dccbd56f098eb6b8107420b834d56a'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
