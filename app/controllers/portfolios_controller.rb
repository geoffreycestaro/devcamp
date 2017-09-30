class PortfoliosController < ApplicationController

  layout 'portfolio'

    def index
      @portfolio_items = Portfolio.all
    end

    def new
      @portfolio_item = Portfolio.new
      3.times { @portfolio_item.technologies.build }
    end

    # POST /portfolio
    def create
      @portfolio_item = Portfolio.new(portfolio_params)

      respond_to do |format|
        if @portfolio_item.save
          format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def edit
      @portfolio_item = Portfolio.find(params[:id])
    end

    # PATCH/PUT /portfolios/1
    def update
      @portfolio_item = Portfolio.find(params[:id])
      respond_to do |format|
        if @portfolio_item.update(portfolio.params)
        else
          format.html { render :edit }
        end
      end
    end

    def show
       @portfolio_item = Portfolio.find(params[:id])
    end

    # Set portfolio item, destroy, redirect.
    def destroy
      @portfolio_item = Portfolio.find(params[:id])
      @portfolio_item.destroy
      respond_to do |format|
        format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully destroyed.' }
      end
    end

    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes: [:name])
    end
end

