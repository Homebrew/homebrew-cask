cask 'yarbs' do
  version '0.1.8'
  sha256 '433511e2b80ef6b0d61e4a8d1049c043bbc901ebb1e707c11409302e56da0df7'

  url "https://github.com/BakeRolls/yarbs/releases/download/v#{version}/yarbs-darwin-x64.zip"
  appcast 'https://github.com/BakeRolls/yarbs/releases.atom'
  name 'yarbs'
  homepage 'https://github.com/BakeRolls/yarbs'

  app 'yarbs-darwin-x64/yarbs.app'
end
