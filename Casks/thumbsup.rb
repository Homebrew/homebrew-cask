class Thumbsup < Cask
  url 'https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/4.5/ThumbsUp.dmg.zip'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c966'
  version '4.5'
  sha256 '7a8e4fa4aaeb8ead174853b64cfcd32a1320d9fdb4d1ca8f0eb9baba18ee625d'
  nested_container 'ThumbsUp.dmg'
  link 'ThumbsUp.app'
end
