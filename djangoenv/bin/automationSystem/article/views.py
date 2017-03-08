from django.shortcuts import render
from django.http.response import HttpResponse, Http404
from django.template.loader import  get_template
from django.template import Context
from django.shortcuts import  render_to_response, redirect
from models import Article, Comments
from django.core.exceptions import ObjectDoesNotExist
from django.template.context_processors import csrf
from forms import CommentForm
from django.contrib import auth
# Create your views here.

def basic_one(request):
    view = "basic_one"
    #html = "<html><body>This is %s view</html></body>".format(view)
    html = "<html><body>This is %s view</html></body>" % view
    return HttpResponse(html)


def template_two(request):
    view = "template_two"
    t = get_template('myview.html')
    html = t.render(Context({ 'name' : view }))
    return HttpResponse(html)

def template_three_simple(request):
    view = "template_three"
    return render_to_response('myview.html', {'name': view})

# function shows that all table for articles Article.objects.all()})
def articles(request):
    return render_to_response('articles.html', {'articles': Article.objects.all()})

# function shows only one article
#def article(request, article_id=1):
 #   return render_to_response('article.html', {'article': Article.objects.get(id=article_id), 'comments': Comments.objects.filter(comments_article_id=article_id)})

def article(request, article_id=1):
 #class CommentForm asigned to the variable comment_form
    comment_form = CommentForm
#created dictionary
    args = {}
    args.update(csrf(request))
    args['article'] = Article.objects.get(id=article_id)
    args['comments'] = Comments.objects.filter(comments_article_id=article_id)
    args['form'] = comment_form
   # args['username']=auth.get_user(request).username
    return render_to_response('article.html', args)


def addlike(request, article_id):
    try:
        article = Article.objects.get(id=article_id)
        article.article_likes += 1
        article.save()
    except ObjectDoesNotExist:
        raise Http404
    return redirect('/')

def addcomment(request, article_id):
    if request.POST:
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.comments_article = Article.objects.get(id=article_id)
            form.save()
    return redirect('/articles/get/%s/' % article_id)


