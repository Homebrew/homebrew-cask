cask 'vuescan' do
  version '9.5.74'
  sha256 'dccf616b79c0f502eadb345e72e7ef0053c3f18f915e712e430ad46094002784'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '696c1b876893d46e371c6e1b274d782d6e4f7a07600e9b6b7fc4b6ed5b564e69'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
