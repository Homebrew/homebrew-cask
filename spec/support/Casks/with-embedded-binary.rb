test_cask 'with-embedded-binary' do
  version '1.2.3'
  sha256 'fe052d3e77d92676775fd916ddb8942e72a565b844ea7f6d055474c99bb4e47b'

  url FileHelper.local_binary_url('AppWithEmbeddedBinary.zip')
  homepage 'http://example.com/with-binary'

  app 'App.app'
  binary "#{appdir}/App.app/Contents/MacOS/App/binary"
end
