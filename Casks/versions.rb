class Versions < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs'
  homepage 'http://versionsapp.com/'

  link 'Versions.app'
end
