# -*- coding: utf-8 -*-
from urllib import urlopen
from bs4 import BeautifulSoup, Comment
import re
import MySQLdb
import cgi

class Parser:
    TEXT_WIDHT = 80
    PICT_MIN_HEIGHT = 100
    def __init__(self, url, file_path=''):
        soup = self.setHtmlPage(url)
        soup_copy = self.setHtmlPage(url)
        title = self.getTitle(soup)
        if not title:
            return

        soup = self.removeTrash(soup)
        soup = self.addToTag(soup, 'p', '\n\n')
        soup = self.addToTag(soup, 'li', '\n')
        divs = self.getDivs(soup)
        one_div = self.getOneDiv(divs)
        main_img = self.getImg(one_div)
        self.outputText(url, title, one_div, file_path, main_img)

    # найти все img в документе
    def getImg(self, one_div):
        s = ''
        for img in one_div.findAll('img'):
            s += img['src']+'\n'
        return s



    # найти все div в документе, убрать вложенные
    def getDivs(self, soup):
        divs = []
        for div in soup.findAll('div'):
            divs.append(div)
            #print div.parent
            for innerdiv in div.findAll('div'):
                innerdiv.replaceWith("")

        #divs = map(lambda s: str(s).replace('\t',''), divs)
        return divs

    def getOneDiv(self, divs):
        new_mas = []
        for div in divs:
            if div.find('p'):
                new_mas.append(div)
        if new_mas:
            unicode_mas =[el.getText() for el in new_mas]
            max_index = unicode_mas.index(max(unicode_mas, key=len))
            max_el = new_mas[max_index]
        else:
            unicode_mas =[el.getText() for el in divs]
            max_index = unicode_mas.index(max(unicode_mas, key=len))
            max_el = divs[max_index]
            print 'no <p>'
        #print max_el
        return max_el

    # получить название документа через h1 или title
    def getTitle(self, _soup):
        h1 = _soup.h1
        if h1:
            title = h1.getText().encode('utf-8')
        else:
            try:
                title = _soup.title.string.encode('utf-8')
            except AttributeError:
                print 'Page couldnt be loaded'
                return False
        return title

    # запись в текстовый файл
    def outputText(self, url, title, one_div, file_path, main_img=''):
        text = ''
        #f1 = open(file_path,'w')

        text_div = one_div.getText().encode('utf-8')
        #print text_div

        for el in (text_div).split('\n'):
            line = 0
            for i in ''.join(el).split():
                line+=len(i)+1
                if(line<self.TEXT_WIDHT):
                    text += i+' '
                else:
                    text += '\n'+i+' '
                    line = len(i)+2
            text += '\n\n'
        while(text.find('\n\n\n')!=-1):
            text = text.replace('\n\n\n','\n\n')
        db = DB(url, title, text, main_img)
        #text = main_img + title +text.strip()
        #f1.write(text)
        #f1.close()

    # удалить все комментарии в документе
    def removeComments(self, soup):
        comments = soup.findAll(text=lambda text:isinstance(text, Comment))
        [comment.extract() for comment in comments]
        return soup

    # удаляем тег, оставляем только внутренний текст
    def clearTag(self, _soup, tag, adding_text=''):
        for i in _soup.findAll(tag):
            i.replaceWith(i.getText()+adding_text)
        return _soup

    # добавляем к тегу строку
    def addToTag(self, _soup, tag, adding_text=''):
        for i in _soup.findAll(tag):
            i.insert(0,'\n')
        return _soup

    # удаляем тег полностью
    def removeTag(self, _soup, tag):
        for i in _soup.findAll(tag):
            i.replaceWith('')
        return _soup

    # а вот эти теги удалим полностью
    def removeTrash(self, _soup):
        _soup = self.removeComments(_soup)
        _soup = self.removeTag(_soup, 'script')
        _soup = self.removeTag(_soup, 'style')
        _soup = self.removeTag(_soup, 'header')
        _soup = self.removeTag(_soup, 'section')
        _soup = self.removeTag(_soup, 'footer')
        _soup = self.removeTag(_soup, 'form')
        _soup = self.removeTag(_soup, 'object')
        _soup = self.removeTag(_soup, 'noscript')
        return _soup

    # открыть страницу с помощью urllib
    def setHtmlPage(self, url):
        page = urlopen(url)
        _soup = BeautifulSoup(page.read(), from_encoding="utf-8")
        return _soup


class DB:
    def __init__(self, url, title, text, picts):
        self.addToDB(url, title, text, picts)

    def addToDB(self, url, title, text, picts):
        try:
            con = MySQLdb.connect(host="127.0.0.1", user="root", passwd="", db="Articles")
            cur = con.cursor()
            cur.execute('SET NAMES `utf8`')

            data = {}
            data['url'] = cgi.escape(url, True)
            data['title'] = cgi.escape(title, True)
            data['text'] = cgi.escape(text, True)
            data['picts'] = cgi.escape(picts, True)

            cur.execute("""INSERT INTO `articles` (`url`, `title`, `text`, `picts`) VALUES (%(url)s,%(title)s,%(text)s,%(picts)s)""", data)
            con.commit()
            print 'ok'
            con.close()
        except MySQLdb.Error:
            print(con.error())
            print 'error'

#parser = Parser('test.html', 'text.txt')
parser = Parser('http://www.vesti.ru/fifaworldcup/news.html?id=6781&cid=138')
parser = Parser("http://lenta.ru/news/2014/06/16/oboronservis2", 'text2.txt')
parser = Parser('http://www.gazeta.ru/brazil2014/news/2014/06/19/n_6243441.shtml')
parser = Parser('http://www.gazeta.ru/social/news/2014/06/23/n_6252257.shtml')
parser = Parser('http://www.gazeta.ru/culture/news/2014/06/23/n_6252281.shtml')
parser = Parser('http://www.gazeta.ru/lifestyle/style/2014/06/a_6078749.shtml')
parser = Parser('http://ria.ru/world/20140623/1013217494.html')
parser = Parser('http://www.bk55.ru/news/article/34582/')
parser = Parser('http://www.bk55.ru/news/article/34538/')
parser = Parser('http://mir24.tv/news/society/10743527')
