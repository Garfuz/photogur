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
