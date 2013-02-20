class Admin::BackendController < ApplicationController
  before_filter :authenticate_admin!
end
