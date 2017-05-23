cask 'tranquility' do
  version '1.1.2'
  sha256 'ce6a357595a1acc757e67961eb148ae75e0cdf7032ebb807c4b3fbadc4fd72e2'

  url "https://github.com/lswank/Tranquility/releases/download/#{version}/Tranquility.app.zip"
  appcast 'https://github.com/lswank/Tranquility/releases.atom',
          checkpoint: '839282331f503a8e30e50887abf9a07c0d3e8844e0c7ceddc6a6f25a2faf65ce'
  name 'Tranquility'
  homepage 'https://github.com/lswank/Tranquility'

  app 'Tranquility.app'
end
