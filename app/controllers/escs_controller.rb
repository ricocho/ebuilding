class EscsController < ApplicationController
  # GET /escs
  # GET /escs.json
  def index
    @escs = Esc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @escs }
    end
  end

  # GET /escs/1
  # GET /escs/1.json
  def show
    @esc = Esc.find(params[:id])
    @datasources = @esc.datasources
    @devices = @esc.devices

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @esc }
    end
  end

  # GET /escs/new
  # GET /escs/new.json
  def new
    @esc = Esc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @esc }
    end
  end

  # GET /escs/1/edit
  def edit
    @esc = Esc.find(params[:id])
  end

  # POST /escs
  # POST /escs.json
  def create
    @esc = Esc.new(params[:esc])

    respond_to do |format|
      if @esc.save
        format.html { redirect_to @esc, notice: 'Esc was successfully created.' }
        format.json { render json: @esc, status: :created, location: @esc }
      else
        format.html { render action: "new" }
        format.json { render json: @esc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /escs/1
  # PUT /escs/1.json
  def update
    @esc = Esc.find(params[:id])

    respond_to do |format|
      if @esc.update_attributes(params[:esc])
        format.html { redirect_to @esc, notice: 'Esc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @esc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escs/1
  # DELETE /escs/1.json
  def destroy
    @esc = Esc.find(params[:id])
    @esc.destroy

    respond_to do |format|
      format.html { redirect_to escs_url }
      format.json { head :no_content }
    end
  end
end

