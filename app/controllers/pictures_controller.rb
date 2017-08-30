class PicturesController < ApplicationController
end

class PicturesController < ApplicationController
  def index
  end
end

class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

end


class PicturesController < ApplicationController

  def show
    @picture = Picture.find(params[:id])
  end

end

class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
  end
end

class PicturesController < ApplicationController

  def create
    render text: "Received POST request to '/pictures' with the data URL: #{params}"
  end

end

class PicturesController < ApplicationController

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]


    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end
end

class PicturesController < ApplicationController
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end
end
