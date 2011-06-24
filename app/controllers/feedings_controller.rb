class FeedingsController < ApplicationController
  # GET /feedings
  # GET /feedings.xml
  def index
    @feedings = Feeding.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedings }
    end
  end

  # GET /feedings/1
  # GET /feedings/1.xml
  def show
    @feeding = Feeding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feeding }
    end
  end

  # GET /feedings/new
  # GET /feedings/new.xml
  def new
    @feeding = Feeding.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feeding }
    end
  end

  # GET /feedings/1/edit
  def edit
    @feeding = Feeding.find(params[:id])
  end

  # POST /feedings
  # POST /feedings.xml
  def create
    @feeding = Feeding.new(params[:feeding])

    respond_to do |format|
      if @feeding.save
        format.html { redirect_to(@feeding, :notice => 'Feeding was successfully created.') }
        format.xml  { render :xml => @feeding, :status => :created, :location => @feeding }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feeding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feedings/1
  # PUT /feedings/1.xml
  def update
    @feeding = Feeding.find(params[:id])

    respond_to do |format|
      if @feeding.update_attributes(params[:feeding])
        format.html { redirect_to(@feeding, :notice => 'Feeding was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feeding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feedings/1
  # DELETE /feedings/1.xml
  def destroy
    @feeding = Feeding.find(params[:id])
    @feeding.destroy

    respond_to do |format|
      format.html { redirect_to(feedings_url) }
      format.xml  { head :ok }
    end
  end
end
