cask 'thumbsup' do
  version '4.5'
  sha256 '7a8e4fa4aaeb8ead174853b64cfcd32a1320d9fdb4d1ca8f0eb9baba18ee625d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.dmg.zip"
  name 'ThumbsUp'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c966'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container nested: 'ThumbsUp.dmg'

  app 'ThumbsUp.app'
end
