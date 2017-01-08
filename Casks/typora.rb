cask 'typora' do
  version '0.9.9.8.8'
  sha256 '001ef5e73cc5efebf884b585ee09db63b2268f5851a18db89a5a3d8f9276ebd2'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '24c28f80b1396ad0b903106d4d94799957790bb20a81d469e6b79b58d523d777'
  name 'Typora'
  homepage 'https://typora.io/'

  app 'Typora.app'
end
