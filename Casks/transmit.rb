cask 'transmit' do
  version '5.1'
  sha256 'e9e922e4c67871ae8c0c08fd9c7a614cb6909dad0983b31f232ad69da540e083'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: 'ad75424b4b41ba975ec6687a588bb5571c9e4848ced58e761b41333f15179b17'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
