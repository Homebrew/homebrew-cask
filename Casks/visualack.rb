cask :v1 => 'visualack' do
  version '0.3.3'
  sha256 'bb9c9563003da7075deecc833546796a8da9abbadbde7600434c52c227da347b'

  url "https://kjkpub.s3.amazonaws.com/vack/VisualAck-#{version}.zip"
  appcast 'https://kjkpub.s3.amazonaws.com/vack/appcast.xml',
          :sha256 => '6efd94f78b76082e0dd4a67fc12357f0ab8b0468690fdf6251c5e5a9e5a4d591'
  homepage 'http://blog.kowalczyk.info/software/vack/'
  license :unknown    # todo: improve this machine-generated value

  app 'VisualAck.app'
end
