module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def content_length; self.class.content_length; end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def version; self.class.version; end

  module ClassMethods
    def content_length(content_length=nil)
      @content_length ||= content_length
    end

    def homepage(homepage=nil)
      @homepage ||= homepage
    end

    def url(url=nil)
      @url ||= (url && URI.parse(url))
    end

    def version(version=nil)
      @version ||= version
    end
  end
end
