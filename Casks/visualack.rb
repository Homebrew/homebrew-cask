cask 'visualack' do
  version '0.3.3'
  sha256 'bb9c9563003da7075deecc833546796a8da9abbadbde7600434c52c227da347b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://kjkpub.s3.amazonaws.com/vack/VisualAck-#{version}.zip"
  appcast 'https://kjkpub.s3.amazonaws.com/vack/appcast.xml',
          checkpoint: 'a0239f75cdd92225a75e4503b0889168f70fcb50399dfa7ba6db99f0f95a21f1'
  name 'VisualAck'
  homepage 'https://blog.kowalczyk.info/software/vack/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VisualAck.app'
end
