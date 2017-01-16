cask 'viewit' do
  version '2.60'
  sha256 '478d052bd9b7ad0e83fd61765b5ee097e143da37769efdd856b582b26c26d5b8'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  appcast 'http://www.hexcat.com/downloads.html',
          checkpoint: '1094126ca908c7c2241a7d2da093d53ee7d05eb8c067b9f9fd92ef679d8ce486'
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'

  app 'ViewIt.app'
end
