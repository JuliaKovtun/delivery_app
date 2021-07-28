class PackagesController < ApplicationController
    def new
        @package = Package.new
    end

    def create
        @package = Package.new(package_params)

        if @package.save
          redirect_to @package
        else
          render :new
        end
    end

    private

    def package_params
        params.require(:package).permit(:tracking_number, :delivery_status)
    end
end