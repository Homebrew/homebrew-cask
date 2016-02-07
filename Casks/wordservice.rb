cask 'wordservice' do
  version '2.8.1'
  sha256 'c8085d93400ee60d103225fbaa53409fe66b8c92afe6cda05ca74916562c3a92'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/wordservice/#{version}/WordService.zip"
  name 'WordService'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1115'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WordService.app'
end
