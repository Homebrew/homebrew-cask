cask 'versions' do
  version :latest
  sha256 :no_check

  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          :sha256 => '2ce78fc38b67b297082814197ad4ddf074dcc7cd1ba4742a7e6fe49eb71e0081'
  name 'Versions'
  homepage 'http://versionsapp.com/'
  license :commercial

  app 'Versions.app'
end
