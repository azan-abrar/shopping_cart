class TaxonomiesController < ApplicationController
  before_action :set_taxonomy, only: [:show]
  load_and_authorize_resource

  def index
    @taxonomies = Taxonomy.ordered.all
  end

  def show
  end

  private
    def set_taxonomy
      @taxonomy = Taxonomy.find(params[:id])
    end

end
