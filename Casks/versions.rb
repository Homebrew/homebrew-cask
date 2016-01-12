cask 'versions' do
  version :latest
  sha256 :no_check

  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          :sha256 => '67f9a7a2e92a81422e6d9bb1889ae8bb6467792ab2af619a5ea7a199928042a3'
  name 'Versions'
  homepage 'http://versionsapp.com/'
  license :commercial

  app 'Versions.app'
end
