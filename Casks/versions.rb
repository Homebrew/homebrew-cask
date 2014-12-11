cask :v1 => 'versions' do
  version :latest
  sha256 :no_check

  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs'
  homepage 'http://versionsapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Versions.app'
end
