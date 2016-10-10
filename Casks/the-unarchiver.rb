cask 'the-unarchiver' do
  version '3.11.1'
  sha256 '2b9e1c0f6bcad958c19bfa0b5b1c59ad0681574100918004c0bcad2e43dc0761'

  url "https://unarchiver.c3.cx/downloads/TheUnarchiver#{version}.dmg"
  appcast 'https://unarchiver.c3.cx/updates.rss',
          checkpoint: '12b3e96559528c84b7353ce25f66d685b3813a4f86b3802835988f9b90084228'
  name 'The Unarchiver'
  homepage 'https://unarchiver.c3.cx/unarchiver'

  auto_updates true

  app 'The Unarchiver.app'
end
