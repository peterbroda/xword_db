class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_encoding

  def set_encoding
    response.headers["Content-Type"] = 'text/html; charset=utf-8'
  end
end
