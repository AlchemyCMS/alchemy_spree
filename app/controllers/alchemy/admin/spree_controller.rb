class Alchemy::Admin::SpreeController < Alchemy::Admin::BaseController
  def index
    authorize! :index, :alchemy_admin_spree
    render
  end

  def create_taxon
    EssenceSpreeTaxon.create(taxon_params)
  end

  def create_product
    EssenceSpreeProduct.create(product_params)
  end

  private
    def taxon_params
      params.permit(:taxon_id)
    end

    def product_params
      params.permit(:spree_product_id)
    end

end
