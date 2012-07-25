class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_as_private
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
end
