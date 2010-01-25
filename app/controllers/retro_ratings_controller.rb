class RetroRatingsController < ApplicationController
  # GET /retro_ratings
  # GET /retro_ratings.xml
  def index
    @retro_ratings = RetroRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @retro_ratings }
    end
  end

  # GET /retro_ratings/1
  # GET /retro_ratings/1.xml
  def show
    @retro_rating = RetroRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @retro_rating }
    end
  end

  # GET /retro_ratings/new
  # GET /retro_ratings/new.xml
  def new
    @retro_rating = RetroRating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @retro_rating }
    end
  end

  # GET /retro_ratings/1/edit
  def edit
    @retro_rating = RetroRating.find(params[:id])
  end

  # POST /retro_ratings
  # POST /retro_ratings.xml
  def create
    @retro_rating = RetroRating.new(params[:retro_rating])

    respond_to do |format|
      if @retro_rating.save
        flash[:notice] = 'RetroRating was successfully created.'
        format.html { redirect_to(@retro_rating) }
        format.xml  { render :xml => @retro_rating, :status => :created, :location => @retro_rating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @retro_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /retro_ratings/1
  # PUT /retro_ratings/1.xml
  def update
    @retro_rating = RetroRating.find(params[:id])

    respond_to do |format|
      if @retro_rating.update_attributes(params[:retro_rating])
        flash[:notice] = 'RetroRating was successfully updated.'
        format.html { redirect_to(@retro_rating) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @retro_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /retro_ratings/1
  # DELETE /retro_ratings/1.xml
  def destroy
    @retro_rating = RetroRating.find(params[:id])
    @retro_rating.destroy

    respond_to do |format|
      format.html { redirect_to(retro_ratings_url) }
      format.xml  { head :ok }
    end
  end
end
