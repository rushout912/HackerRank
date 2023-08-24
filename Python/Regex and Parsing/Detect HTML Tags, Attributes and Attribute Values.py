from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
    def handle_starttag(self, tag, attrs):
        print(tag)
        for li in attrs:
            print('->', li[0], '>', li[1])


if __name__ == '__main__':
    n = int(input())
    if 0 < n < 100:
        pass
    else:
        print('The number of lines in a HTML code snippet must be between 0 and 100.')
    s = ''
    for _ in range(n):
        t = input()
        s += t
        
    obj = MyHTMLParser()
    obj.feed(s)
