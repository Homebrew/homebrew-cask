cask 'visualack' do
  version '0.3.3'
  sha256 'bb9c9563003da7075deecc833546796a8da9abbadbde7600434c52c227da347b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://kjkpub.s3.amazonaws.com/vack/VisualAck-#{version}.zip"
  appcast 'https://kjkpub.s3.amazonaws.com/vack/appcast.xml',
          :sha256 => '998dffd1b5ffd2298daebf20c6dab065ae874af7474a95a031f0803a5c47cad0'
  name 'VisualAck'
  homepage 'https://blog.kowalczyk.info/software/vack/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VisualAck.app'
end
