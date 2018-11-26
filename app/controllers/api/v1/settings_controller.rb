module Api::V1
  class SettingsController < ApplicationController
    before_action :get_component
    before_action :get_setting, only: [:show, :update, :destroy] 
    # GET /lists
    def index
      @settings = @component.settings
      render json: @settings
    end
  
    # GET /lists/1
    def show
      render json: @setting
    end
  
    # POST /lists
    def create
      @setting = Setting.new(setting_params)
  
      if @setting.save
        render json: @setting, status: :created
      else
        render json: @setting.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /lists/1
    def update
      if @setting.update(setting_params)
        render json: @setting
      else
        render json: @setting.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /lists/1
    def destroy
      @setting.destroy
      if @setting.destroy
        head :no_content, status: :ok
      else
        render json: @setting.errors, status: :unprocessable_entity
      end      
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def get_component
        @component = Component.find(params[:component_id])
      end

      def get_setting
        @setting = Setting.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def setting_params
        params.permit(:button_name, :button_color, :opacity, :button_width, :button_height, :button_shape, :button_padding_width, :button_padding_height, :button_text, :text_color, :text_alignment, :text_decoration, :text_transform, :letter_spacing, :font_size, :font_family, :font_style, :font_weight, :font_variant, :border_color, :border_thickness, :shadow_color, :shadow_vertical_offset, :shadow_horizontal_offset, :shadow_spread_offset, :shadow_blur).merge(component_id: params[:component_id].to_i)
      end
  end
  end