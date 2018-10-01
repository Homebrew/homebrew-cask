cask 'yarbs' do
  version '0.1.9'
  sha256 'e4528f2ba9950d679e81226243fa7e13885a6d0019b00640f28c96a761410bf7'

  url "https://github.com/BakeRolls/yarbs/releases/download/v#{version}/yarbs-darwin-x64.zip"
  appcast 'https://github.com/BakeRolls/yarbs/releases.atom'
  name 'yarbs'
  homepage 'https://github.com/BakeRolls/yarbs'

  app 'yarbs-darwin-x64/yarbs.app'
end
