cask :v1 => 'gitbook-editor' do
  version '4.1.4'
  sha256 'fa9db4e241c5e9e82d87265cb0fe5e874221e06802e6f6b5811799fb764ca15f'

  url "http://downloads.editor.gitbook.com/download/osx?user=chaucerling"
  name 'GitBook Editor'
  homepage 'https://www.gitbook.com/editor'
  license :unknown

  app 'GitBook Editor.app'
end
