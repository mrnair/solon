require 'cgi'

module Solon
  class PostData < Hash
    def to_post_data
      collect { |key, value| "#{key}=#{CGI.escape(value.to_s)}" }.join("&")  
    end
  
    alias_method :to_s, :to_post_data
  end
end