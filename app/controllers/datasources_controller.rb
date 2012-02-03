class DatasourcesController < ApplicationController
  # GET /datasources
  # GET /datasources.json
  def index
    @datasources = Datasource.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datasources }
    end
  end

  # GET /datasources/1
  # GET /datasources/1.json
  def show

    @datasource = Datasource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datasource }
    end
  end

  # GET /datasources/new
  # GET /datasources/new.json
  def new
    @datasource = Datasource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datasource }
    end
  end

  # GET /datasources/1/edit
  def edit
    @datasource = Datasource.find(params[:id])
  end

  # POST /datasources
  # POST /datasources.json
  def create
    @datasource = Datasource.new(params[:datasource])

    respond_to do |format|
      if @datasource.save
        format.html { redirect_to @datasource, notice: 'Datasource was successfully created.' }
        format.json { render json: @datasource, status: :created, location: @datasource }
      else
        format.html { render action: "new" }
        format.json { render json: @datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datasources/1
  # PUT /datasources/1.json
  def update
    @datasource = Datasource.find(params[:id])

    respond_to do |format|
      if @datasource.update_attributes(params[:datasource])
        format.html { redirect_to @datasource, notice: 'Datasource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasources/1
  # DELETE /datasources/1.json
  def destroy
    @datasource = Datasource.find(params[:id])
    @datasource.destroy

    respond_to do |format|
      format.html { redirect_to datasources_url }
      format.json { head :no_content }
    end
  end
end

