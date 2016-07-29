test_cask 'appcast-invalid-checkpoint' do
  appcast 'http://localhost/appcast.xml',
          checkpoint: 'not a valid shasum'
end
