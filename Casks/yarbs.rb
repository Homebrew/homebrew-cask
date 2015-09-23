cask :v1 => 'yarbs' do
  version 'v0.1.7'
  sha256 '53acdb014be17ae19d8fbd3055d80223a469e60c2bb1c5b662e1c8369dede355'

  url "https://github.com/BakeRolls/yarbs/releases/download/#{version}/yarbs-darwin-x64.zip"
  appcast 'https://github.com/BakeRolls/yarbs/releases.atom'
  name 'yarbs'
  homepage 'https://github.com/BakeRolls/yarbs'
  license :unknown

  app 'yarbs-darwin-x64/yarbs.app'
end
