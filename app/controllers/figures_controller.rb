class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'figures/show_figures'
  end

   get '/figures/new' do
     erb :'figures/new'
   end

   post '/figures' do

     @figure = Figure.create(:name => params[:figure][:name])
     @figure.titles << Title.find_or_create_by(params[:figure][:title_ids]) << Title.find_or_create_by(params[:title])
     @figure.landmarks << Landmark.find_or_create_by(params[:figure][:landmark_ids])
     @figure.landmarks.each do |land|
      land.name << params[:landmark][:name]
      land.year_completed << params[:landmark][:year_completed].to_i
    end

     @figure.save
     
     redirect '/figures'
   end




end
