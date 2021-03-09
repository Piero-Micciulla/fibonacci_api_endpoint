class FibosController < ApplicationController
  before_action :set_fibo, only: [:show, :update, :destroy]

  # GET /fibos
  def index
    @fibos = Fibo.all

    render json: @fibos
  end

  # GET /fibos/1
  def show
    render json: fibonacci(params[:id])
  end

  # POST /fibos
  def create
    @fibo = Fibo.new(fibo_params)

    if @fibo.save
      render json: @fibo, status: :created, location: @fibo
    else
      render json: @fibo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fibos/1
  def update
    if @fibo.update(fibo_params)
      render json: @fibo
    else
      render json: @fibo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fibos/1
  def destroy
    @fibo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fibo
      @fibo = Fibo.find(params[:id])
    end

    def fibonacci(n)
      n = n.to_i
      if n == 1 || n == 2
        return 1
      else
        return fibonacci(n-1) + fibonacci(n-2)
      end
    end

    # Only allow a trusted parameter "white list" through.
    def fibo_params
      params.require(:fibo).permit(:number)
    end
end
