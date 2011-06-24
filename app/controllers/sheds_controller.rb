class ShedsController < ApplicationController
  # GET /sheds
  # GET /sheds.xml
  def index
    @sheds = Shed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sheds }
    end
  end

  # GET /sheds/1
  # GET /sheds/1.xml
  def show
    @shed = Shed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shed }
    end
  end

  # GET /sheds/new
  # GET /sheds/new.xml
  def new
    @shed = Shed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shed }
    end
  end

  # GET /sheds/1/edit
  def edit
    @shed = Shed.find(params[:id])
  end

  # POST /sheds
  # POST /sheds.xml
  def create
    @shed = Shed.new(params[:shed])

    respond_to do |format|
      if @shed.save
        format.html { redirect_to(@shed, :notice => 'Shed was successfully created.') }
        format.xml  { render :xml => @shed, :status => :created, :location => @shed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sheds/1
  # PUT /sheds/1.xml
  def update
    @shed = Shed.find(params[:id])

    respond_to do |format|
      if @shed.update_attributes(params[:shed])
        format.html { redirect_to(@shed, :notice => 'Shed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sheds/1
  # DELETE /sheds/1.xml
  def destroy
    @shed = Shed.find(params[:id])
    @shed.destroy

    respond_to do |format|
      format.html { redirect_to(sheds_url) }
      format.xml  { head :ok }
    end
  end
end
