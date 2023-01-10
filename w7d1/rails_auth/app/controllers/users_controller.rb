class UsersController < ApplicationController
   before_action :require_logged_out, only: [:new, :create] 
   before_action :require_logged_in, only: [:index, :show, :edit, :update] 

   
end