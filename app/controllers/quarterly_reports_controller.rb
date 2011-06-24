class QuarterlyReportsController < ApplicationController
  # GET /quarterly_reports
  # GET /quarterly_reports.xml
  def index
    @quarterly_reports = QuarterlyReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quarterly_reports }
    end
  end

  # GET /quarterly_reports/1
  # GET /quarterly_reports/1.xml
  def show
    @quarterly_report = QuarterlyReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quarterly_report }
    end
  end

  # GET /quarterly_reports/new
  # GET /quarterly_reports/new.xml
  def new
    @quarterly_report = QuarterlyReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quarterly_report }
    end
  end

  # GET /quarterly_reports/1/edit
  def edit
    @quarterly_report = QuarterlyReport.find(params[:id])
  end

  # POST /quarterly_reports
  # POST /quarterly_reports.xml
  def create
    @quarterly_report = QuarterlyReport.new(params[:quarterly_report])

    respond_to do |format|
      if @quarterly_report.save
        format.html { redirect_to(@quarterly_report, :notice => 'Quarterly report was successfully created.') }
        format.xml  { render :xml => @quarterly_report, :status => :created, :location => @quarterly_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quarterly_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quarterly_reports/1
  # PUT /quarterly_reports/1.xml
  def update
    @quarterly_report = QuarterlyReport.find(params[:id])

    respond_to do |format|
      if @quarterly_report.update_attributes(params[:quarterly_report])
        format.html { redirect_to(@quarterly_report, :notice => 'Quarterly report was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quarterly_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quarterly_reports/1
  # DELETE /quarterly_reports/1.xml
  def destroy
    @quarterly_report = QuarterlyReport.find(params[:id])
    @quarterly_report.destroy

    respond_to do |format|
      format.html { redirect_to(quarterly_reports_url) }
      format.xml  { head :ok }
    end
  end
end
