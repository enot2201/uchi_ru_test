class ArticlesController < ApplicationController
  #базовая http аутификация
  http_basic_authenticate_with name: "login", password: "password", except: [:index, :show]
  def index
    #показывает все статьи
    @articles = Article.all
  end

  def show
    #показывает одну статью по указаному id
    @article = Article.find(params[:id])
  end

  def new
    #инициализация новой статьи без сохранения
    @article = Article.new
  end

  def create
    #инициализация с значениями и сохранением через strong_params
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    #редактирование статьи
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    #удаление статьи
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
  def article_params
    #обьединение всех необходимых данных в один хэш и валидация ключей которые могут там быть
    params.require(:article).permit(:title, :body, :status)
  end
end