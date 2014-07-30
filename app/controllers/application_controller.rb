class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
    @i = Idea.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
    
  def create
    i = Idea.new
    i.descrip = params['descrip']
    i.save
    redirect_to "/idea/#{ i.id }"
  end
  
  def edit
    @i = Idea.find_by_id(params['id'])
  end
  
  def update
    @i = Idea.find_by_idea(params['id'])
    @i.descrip = params['descrip']
    @i.save
    redirect_to "/idea/#{ @i.id }"
  end
  
  def index
    @i = Idea.all
  end
  
  def destroy
    @i = Idea.find_by_idea(params['id'])
    @i.destroy
    render 'destroy'
  end
end
