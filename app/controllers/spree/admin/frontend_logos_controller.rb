module Spree
  module Admin
    class FrontendLogosController < ResourceController

      def edit
        @frontend_logo = Spree::FrontendLogo.first
        @frontend_logo = Spree::FrontendLogo.new() unless @frontend_logo

      end

      def update
        @frontend_logo = Spree::FrontendLogo.first

        if !@frontend_logo
          @frontend_logo = Spree::FrontendLogo.new(frontend_logo)
        else
          @frontend_logo.attachment_light =  frontend_logo["attachment_light"]
          @frontend_logo.attachment_dark =  frontend_logo["attachment_dark"]
        end

        if (@frontend_logo.save)
          flash[:success] = "Successfully saved Logo image"

        else
          flash[:error] = "Error creating Logo image"
        end

        redirect_to edit_admin_frontend_logo_path
      end


      private

      def frontend_logo
        params.require(:frontend_logo).permit(:attachment_light, :attachment_dark)
      end


    end
  end
end
