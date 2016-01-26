cask 'workamajig' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Workamajig/AIR/Workamajig.air'
  name 'Workamajig'
  homepage 'http://www.workamajig.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on cask: 'adobe-air'

  app 'Workamajig.app'
end
