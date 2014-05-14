class Versions < Cask
  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs'
  homepage 'http://versionsapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Versions.app'
end
