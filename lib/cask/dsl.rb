module Cask::DSL
  def self.included(base)
    base.extend(ClassMethods)
  end

  def homepage; self.class.homepage; end

  def url; self.class.url; end

  def version; self.class.version; end

  module ClassMethods
    def homepage(homepage=nil)
      @homepage ||= homepage
    end

    def url(url=nil)
      @url ||= URI.parse(url)
    end

    def version(version=nil)
      @version ||= version
    end
  end
end
