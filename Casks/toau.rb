cask 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml',
          :sha256 => '461fbc0b2f371ca4a78cafac556a8272c3516eea124a1d4b3e514a7fb2f8d9a4'
  name 'Toau'
  homepage 'http://toauapp.com'
  license :commercial

  app 'Toau.app'
end
