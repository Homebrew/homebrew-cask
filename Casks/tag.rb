cask 'tag' do
  version '1.0.5,017'
  sha256 '3b3b21909dc00d4ff87a501c6451fb14e99ef1c10bea64d69ace5cfaa5bfe1a4'

  # s3.amazonaws.com/feisty-dog/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Tag-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Tag'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'

  app 'Tag.app'
end
