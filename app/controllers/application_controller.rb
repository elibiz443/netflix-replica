class ApplicationController < ActionController::Base
  include Pagy::Backend
  include ApplicationHelper
end
