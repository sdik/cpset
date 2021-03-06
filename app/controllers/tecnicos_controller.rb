class TecnicosController < ApplicationController
  # GET /tecnicos
  # GET /tecnicos.json
  def index
    @tecnicos = Tecnico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tecnicos }
    end
  end

  # GET /tecnicos/1
  # GET /tecnicos/1.json
  def show
    @tecnico = Tecnico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tecnico }
    end
  end

  # GET /tecnicos/new
  # GET /tecnicos/new.json
  def new
    @tecnico = Tecnico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tecnico }
    end
  end

  # GET /tecnicos/1/edit
  def edit
    @tecnico = Tecnico.find(params[:id])
  end

  # POST /tecnicos
  # POST /tecnicos.json
  def create
    @tecnico = Tecnico.new(params[:tecnico])

    respond_to do |format|
      if @tecnico.save
        format.html { redirect_to @tecnico, notice: 'Tecnico criado com sucesso.' }
        format.json { render json: @tecnico, status: :created, location: @tecnico }
      else
        format.html { render action: "new" }
        format.json { render json: @tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tecnicos/1
  # PUT /tecnicos/1.json
  def update
    @tecnico = Tecnico.find(params[:id])

    respond_to do |format|
      if @tecnico.update_attributes(params[:tecnico])
        format.html { redirect_to @tecnico, notice: 'Tecnico atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnicos/1
  # DELETE /tecnicos/1.json
  def destroy
    @tecnico = Tecnico.find(params[:id])
    @tecnico.destroy

    respond_to do |format|
      format.html { redirect_to tecnicos_url }
      format.json { head :no_content }
    end
  end
end
