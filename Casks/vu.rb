cask 'vu' do
  version '6,1523016199'
  sha256 'a51884117a8e33339429a93a84c70eb82db46dc50ebe827ab7b7c9a0c6ced313'

  # dl.devmate.com/com.boriskarulin.vu was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.boriskarulin.vu/#{version.before_comma}/#{version.after_comma}/vu-#{version.before_comma}.dmg"
  appcast 'http://updates.devmate.com/com.boriskarulin.vu.xml',
          checkpoint: '6071daeb09fc38b112121140a6ffe90b43ddfa7bc2a68bfe223b7157c7c5401f'
  name 'vu'
  homepage 'https://datastills.com/vu/'

  app 'vu.app'
end
