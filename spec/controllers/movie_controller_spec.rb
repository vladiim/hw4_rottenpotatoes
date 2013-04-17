require 'spec_helper'

describe MoviesController do

  before { Movie.create(title: 'title', director: 'director') }

  # READ http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

  describe 'GET #directors' do
    it 'renders the directors for a movie' do
  	  get :directors, movie: Movie.find_by_title('title')
  	  response.should render_template 'movies/directors'
    end
  end
end