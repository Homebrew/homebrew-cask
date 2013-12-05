require 'test_helper'

describe Cask::Headers do
  describe '#headers' do
    it 'returns header options' do
      options  = { :user_agent => 'Netscape/1.0.1',
                   :cookies    => { :cookey => 'nom_nom' } }
      instance = Cask::Headers.new(options)

      instance.headers.must_equal options
      instance.user_agent.must_equal options[:user_agent]
      instance.cookies.must_equal options[:cookies]
      instance.cookies[:cookey].must_equal options[:cookies][:cookey]
    end
  end

  describe '#user_agent' do
    it 'returns user_agent' do
      options  = { user_agent: 'Mozilla/25.0.1' }
      instance = Cask::Headers.new(options)

      instance.headers.must_equal options
      instance.user_agent.must_equal options[:user_agent]
    end
  end

  describe '#cookies' do
    it 'returns cookies' do
      options  = { cookies: { cookey: 'nom_nom' } }
      instance = Cask::Headers.new(options)

      instance.headers.must_equal options
      instance.cookies.must_equal options[:cookies]
    end
  end
end
