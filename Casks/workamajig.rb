cask :v1 => 'workamajig' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Workamajig/AIR/Workamajig.air'
  name 'Workamajig'
  homepage 'http://www.workamajig.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Workamajig.app'

  depends_on :cask => 'adobe-air'
end
