class BudgetpostsController < ApplicationController
  # GET /budgetposts
  # GET /budgetposts.json
  def index
    @budgetposts = Budgetpost.all(:order => 'nummer ASC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @budgetposts }
    end
  end

  # GET /budgetposts/1
  # GET /budgetposts/1.json
  def show
    @budgetpost = Budgetpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @budgetpost }
    end
  end

  # GET /budgetposts/new
  # GET /budgetposts/new.json
  def new
    @budgetpost = Budgetpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @budgetpost }
    end
  end

  # GET /budgetposts/1/edit
  def edit
    @budgetpost = Budgetpost.find(params[:id])
  end

  # POST /budgetposts
  # POST /budgetposts.json
  def create
    @budgetpost = Budgetpost.new(params[:budgetpost])

    respond_to do |format|
      if @budgetpost.save
        format.html { redirect_to @budgetpost, notice: 'Budgetpost was successfully created.' }
        format.json { render json: @budgetpost, status: :created, location: @budgetpost }
      else
        format.html { render action: "new" }
        format.json { render json: @budgetpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /budgetposts/1
  # PUT /budgetposts/1.json
  def update
    @budgetpost = Budgetpost.find(params[:id])

    respond_to do |format|
      if @budgetpost.update_attributes(params[:budgetpost])
        format.html { redirect_to @budgetpost, notice: 'Budgetpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @budgetpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgetposts/1
  # DELETE /budgetposts/1.json
  def destroy
    @budgetpost = Budgetpost.find(params[:id])
    @budgetpost.destroy

    respond_to do |format|
      format.html { redirect_to budgetposts_url }
      format.json { head :no_content }
    end
  end
end
