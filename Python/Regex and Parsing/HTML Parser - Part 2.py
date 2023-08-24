from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
    def handle_comment(self, data):
        if '\n' in data:
            print('>>> Multi-line Comment')
        else:
            print('>>> Single-line Comment')
        print(data)
    def handle_data(self, data):
        if data == '\n':
            return
        print(">>> Data")
        print(data)
  
  
if __name__ == '__main__':
    html = ""
    n = int(input())
    if 0 < n < 100:
        pass
    else:
        print('The number of lines in a HTML code snippet must be between 0 and 100.')

    for i in range(n):
        html += input().rstrip()
        html += '\n'

    parser = MyHTMLParser()
    parser.feed(html)
    parser.close()
