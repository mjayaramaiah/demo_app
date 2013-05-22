class MIcropostsController < ApplicationController
  # GET /m_icroposts
  # GET /m_icroposts.json
  def index
    @m_icroposts = MIcropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_icroposts }
    end
  end

  # GET /m_icroposts/1
  # GET /m_icroposts/1.json
  def show
    @m_icropost = MIcropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_icropost }
    end
  end

  # GET /m_icroposts/new
  # GET /m_icroposts/new.json
  def new
    @m_icropost = MIcropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_icropost }
    end
  end

  # GET /m_icroposts/1/edit
  def edit
    @m_icropost = MIcropost.find(params[:id])
  end

  # POST /m_icroposts
  # POST /m_icroposts.json
  def create
    @m_icropost = MIcropost.new(params[:m_icropost])

    respond_to do |format|
      if @m_icropost.save
        format.html { redirect_to @m_icropost, notice: 'M icropost was successfully created.' }
        format.json { render json: @m_icropost, status: :created, location: @m_icropost }
      else
        format.html { render action: "new" }
        format.json { render json: @m_icropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_icroposts/1
  # PUT /m_icroposts/1.json
  def update
    @m_icropost = MIcropost.find(params[:id])

    respond_to do |format|
      if @m_icropost.update_attributes(params[:m_icropost])
        format.html { redirect_to @m_icropost, notice: 'M icropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_icropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_icroposts/1
  # DELETE /m_icroposts/1.json
  def destroy
    @m_icropost = MIcropost.find(params[:id])
    @m_icropost.destroy

    respond_to do |format|
      format.html { redirect_to m_icroposts_url }
      format.json { head :no_content }
    end
  end
end
