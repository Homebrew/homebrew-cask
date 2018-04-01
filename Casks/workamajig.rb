cask 'workamajig' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/Workamajig was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/Workamajig/AIR/Workamajig.air'
  name 'Workamajig'
  homepage 'https://www.workamajig.com/'

  depends_on cask: 'adobe-air'

  app 'Workamajig.app'
end
