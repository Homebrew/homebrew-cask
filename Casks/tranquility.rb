cask 'tranquility' do
  version '1.1.2'
  sha256 'ce6a357595a1acc757e67961eb148ae75e0cdf7032ebb807c4b3fbadc4fd72e2'

  url "https://github.com/lswank/Tranquility/releases/download/#{version}/Tranquility.app.zip"
  appcast 'https://github.com/lswank/Tranquility/releases.atom',
          checkpoint: 'b8dc56d79cb1a936e3db580d58b09204af3599197a97702cf6196e27c2c2c199'
  name 'Tranquility'
  homepage 'https://github.com/lswank/Tranquility'

  app 'Tranquility.app'
end
