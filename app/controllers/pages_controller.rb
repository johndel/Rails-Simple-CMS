class PagesController < FrontendController
  caches_page :index, :show
  layout "pages"

  before_filter :homepage
  before_filter :default_menu_pages

  def index
    @page = @homepage
    check_404
  end

  def show
    @page = Page.where("permalink = ?", params[:permalink]).first
    check_404
  end

  private
  def default_menu_pages
  	menu_id = Menu.select("id").where(:name => "default").first
    @pages = Page.position_order(menu_id)
  end

  def check_404
    render_404 if @page.nil? || @homepage.permalink == params[:permalink] ||  @page.active == false # render_404 on application controller
  end

  def homepage
    @homepage = Page.first_page
  end

end
