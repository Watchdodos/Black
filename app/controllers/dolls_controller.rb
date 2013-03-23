class DollsController < ApplicationController
    before_filter :authenticate_user!, except: [:index,:show]

  # GET /dolls
  # GET /dolls.json
  def index
@search = Doll.search do
fulltext params[:search]
end    
    @dolls = @search.results

  end

  # GET /dolls/1
  # GET /dolls/1.json
  def show
    @doll = Doll.find(params[:id])
    @pin = Pin.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doll }
    end
  end

  # GET /dolls/new
  # GET /dolls/new.json
  def new
    @page = 'newdoll'
    @doll = current_user.dolls.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doll }
    end
  end

  # GET /dolls/1/edit
  def edit
    @doll = current_user.dolls.find(params[:id])
  end

  # POST /dolls
  # POST /dolls.json
  def create
    @doll = current_user.dolls.new(params[:doll])

    respond_to do |format|
      if @doll.save
        format.html { redirect_to @doll, notice: 'Doll was successfully created.' }
        format.json { render json: @doll, status: :created, location: @doll }
      else
        format.html { render action: "new" }
        format.json { render json: @doll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dolls/1
  # PUT /dolls/1.json
  def update
    @doll = current_user.dolls.find(params[:id])

    respond_to do |format|
      if @doll.update_attributes(params[:doll])
        format.html { redirect_to @doll, notice: 'Doll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dolls/1
  # DELETE /dolls/1.json
  def destroy
    @doll = current_user.dolls.find(params[:id])
    @doll.destroy

    respond_to do |format|
      format.html { redirect_to dolls_url }
      format.json { head :no_content }
    end
  end
end
