class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'application/index'
  end

 get '/figures/new' do
   erb :'application/new'
 end



end
