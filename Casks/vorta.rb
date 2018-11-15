cask 'vorta' do
  version '0.3.0'
  sha256 '32bd74506d2e26d4ca77c6423fd59b0507f56611e9d683f21ce8a8cb54213908'

  url 'https://github.com/borgbase/vorta/releases/download/v0.3.0/vorta-0.3.0-alpha.zip'
  appcast 'https://github.com/borgbase/vorta/releases.atom'
  name 'Vorta'
  homepage 'https://github.com/borgbase/vorta'

  app 'Vorta.app'
end
