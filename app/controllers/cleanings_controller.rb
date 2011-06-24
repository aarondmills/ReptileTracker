class CleaningsController < ApplicationController
  # GET /cleanings
  # GET /cleanings.xml
  def index
    @cleanings = Cleaning.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cleanings }
    end
  end

  # GET /cleanings/1
  # GET /cleanings/1.xml
  def show
    @cleaning = Cleaning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cleaning }
    end
  end

  # GET /cleanings/new
  # GET /cleanings/new.xml
  def new
    @cleaning = Cleaning.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cleaning }
    end
  end

  # GET /cleanings/1/edit
  def edit
    @cleaning = Cleaning.find(params[:id])
  end

  # POST /cleanings
  # POST /cleanings.xml
  def create
    @cleaning = Cleaning.new(params[:cleaning])

    respond_to do |format|
      if @cleaning.save
        format.html { redirect_to(@cleaning, :notice => 'Cleaning was successfully created.') }
        format.xml  { render :xml => @cleaning, :status => :created, :location => @cleaning }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cleaning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cleanings/1
  # PUT /cleanings/1.xml
  def update
    @cleaning = Cleaning.find(params[:id])

    respond_to do |format|
      if @cleaning.update_attributes(params[:cleaning])
        format.html { redirect_to(@cleaning, :notice => 'Cleaning was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cleaning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cleanings/1
  # DELETE /cleanings/1.xml
  def destroy
    @cleaning = Cleaning.find(params[:id])
    @cleaning.destroy

    respond_to do |format|
      format.html { redirect_to(cleanings_url) }
      format.xml  { head :ok }
    end
  end
end
