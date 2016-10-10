cask 'thumbsup' do
  version '4.5'
  sha256 '7a8e4fa4aaeb8ead174853b64cfcd32a1320d9fdb4d1ca8f0eb9baba18ee625d'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.dmg.zip"
  name 'ThumbsUp'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c966'

  app 'ThumbsUp.app'
end
