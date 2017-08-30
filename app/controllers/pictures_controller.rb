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
