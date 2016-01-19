test_cask 'appcast-checkpoint-sha256-for-empty-string' do
  appcast 'http://localhost/appcast.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
end
