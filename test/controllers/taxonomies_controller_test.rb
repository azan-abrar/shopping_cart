require 'test_helper'

class TaxonomiesControllerTest < ActionController::TestCase
  setup do
    @taxonomy = taxonomies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxonomies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxonomy" do
    assert_difference('Taxonomy.count') do
      post :create, taxonomy: { category_id: @taxonomy.category_id, name: @taxonomy.name, order: @taxonomy.order, parent_id: @taxonomy.parent_id, slug: @taxonomy.slug }
    end

    assert_redirected_to taxonomy_path(assigns(:taxonomy))
  end

  test "should show taxonomy" do
    get :show, id: @taxonomy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxonomy
    assert_response :success
  end

  test "should update taxonomy" do
    patch :update, id: @taxonomy, taxonomy: { category_id: @taxonomy.category_id, name: @taxonomy.name, order: @taxonomy.order, parent_id: @taxonomy.parent_id, slug: @taxonomy.slug }
    assert_redirected_to taxonomy_path(assigns(:taxonomy))
  end

  test "should destroy taxonomy" do
    assert_difference('Taxonomy.count', -1) do
      delete :destroy, id: @taxonomy
    end

    assert_redirected_to taxonomies_path
  end
end
