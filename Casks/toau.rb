cask 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml',
          :sha256 => '7e512c74e07bb600c1828e5a14db4a28b6550018a0f802f6cc00aaf8f03c1de5'
  name 'Toau'
  homepage 'http://toauapp.com'
  license :commercial

  app 'Toau.app'
end
