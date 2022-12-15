class SillyController < ApplicationController
#   def index
#     @silly = Silly.all
#   end

  def fun
    render json: params[:message]
  end

  def time
    render json: params
  end

  def super
    render json: params
  end
end



# Path: supes/app/views/silly/index.html.erb
# <h1>Silly</h1>
# <% @silly.each do |s| %>
#   <p><%= s.name %></p>
# <% end %>

# # Path: supes/app/models/silly.rb
# class Silly < ActiveRecord::Base
# end

# # Path: supes/db/migrate/20130703140342_create_silly.rb
# class CreateSilly