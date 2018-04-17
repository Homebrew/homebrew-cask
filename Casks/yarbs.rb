cask 'yarbs' do
  version '0.1.8'
  sha256 '433511e2b80ef6b0d61e4a8d1049c043bbc901ebb1e707c11409302e56da0df7'

  url "https://github.com/BakeRolls/yarbs/releases/download/v#{version}/yarbs-darwin-x64.zip"
  appcast 'https://github.com/BakeRolls/yarbs/releases.atom',
          checkpoint: 'bbd0d7e75ffa4d53c94f2bd5574d6dc8da609398b484470079999d1ed4269d34'
  name 'yarbs'
  homepage 'https://github.com/BakeRolls/yarbs'

  app 'yarbs-darwin-x64/yarbs.app'
end
