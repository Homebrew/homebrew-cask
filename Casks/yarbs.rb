cask 'yarbs' do
  version 'v0.1.8'
  sha256 '433511e2b80ef6b0d61e4a8d1049c043bbc901ebb1e707c11409302e56da0df7'

  url "https://github.com/BakeRolls/yarbs/releases/download/#{version}/yarbs-darwin-x64.zip"
  appcast 'https://github.com/BakeRolls/yarbs/releases.atom',
          checkpoint: 'db31cf2eea194cca39e9958ff919e74d08587d66ad40cdd369e25c37f1bacb64'
  name 'yarbs'
  homepage 'https://github.com/BakeRolls/yarbs'

  app 'yarbs-darwin-x64/yarbs.app'
end
