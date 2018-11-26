module Api::V1
  class ComponentsController < ApplicationController
    before_action :get_component, only: [:show, :update, :destroy] 
    # GET /lists
    def index
      @components = Component.order(:id)
      render json: @components
    end
  
    # GET /lists/1
    def show
      if @component
      render json: @component
      else
        render json: @component.errors, status: :unprocessable_entity
      end
    end
  
    # POST /lists
    def create
      @component = Component.new(component_params)
  
      if @component.save
        render json: @component, status: :created
      else
        render json: @component.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /lists/1
    def update
      if @component.update(component_params)
        render json: @component
      else
        render json: @component.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /lists/1
    def destroy
      @component.destroy
      if @component.destroy
        head :no_content, status: :ok
      else
        render json: @component.errors, status: :unprocessable_entity
      end      
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def get_component
        @component = Component.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def component_params
        params.permit(:component_name)
      end
  end
  end