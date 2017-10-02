class VideosController < Sinatra::Base

	# 32 characters to drop at the start of the url

	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end
	
	get '/' do
		@videos = Video.all
		erb :'videos/index'
	end

	get '/new' do
		@video = Video.new
		erb :'videos/new'
	end

	get '/:id' do
		id = params[:id]
		@video = Video.find(id)
		erb :'videos/show'
	end

	post '/' do
		video = Video.new
		video.title = params[:title]
		video.description = params[:description]
		video.url = params[:url]
		video.save
		redirect '/'
	end

	put '/:id' do
		id = params[:id]
		video = Video.find(id)
		video.title = params[:title]
		video.description = params[:description]
		video.url = params[:url]
		video.save
		redirect '/'
	end

	get '/:id/edit' do
		id = params[:id]
		@video = Video.find(id)
		erb :'videos/edit'
	end

	delete '/:id' do
		id = params[:id]
		Video.destroy(id)
		redirect '/'
	end

end













