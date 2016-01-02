test_cask 'appcast-invalid-sha256' do
  appcast 'http://localhost/appcast.xml',
          :sha256 => 'not a valid shasum'
end
