# Projekt Bazy Danych Northwind-2019

# Wybrane technologie
- Ruby on Rails
- PostgreSQL

# Twórcy projektu
- Michał Dawid
- Damian Podlejski
- Magda Zając

Projekt zostal oparty na https://guides.rubyonrails.org/ , gdzie mozna przesledzic caly proces tworzenia aplikacji webowej korzystajacej z bazy danych.

# Proces tworzenia projektu

Po zainstalowaniu koniecznych technologii, to jest: ruby, ruby on rails, pqsql. Nalezy zdefiniowac gemfile, czyli plik, w ktorym definiujemy z jakich gemow(bibliotek) bedziemy korzystac. Gemy konieczne do dzialania naszego projektu to faker i fabrication, ktore odpowiadaja za generowanie losowych danych do seedowania bazy.
Konieczne jest ustawienie w zmiennych korzystanie z bazy Postgres, gdyz domyslnie ustawiona jest baza SQLite.

Najwazniejszym punktem tworzenia bazy danych jest stworzenie modeli. Mozliwe jest tworzenie ich recznie, jednak jezeli na tym etapie mamy juz zdefiniowana strukture szybciej i wygodniej jest skorzystac z rails generate model.
Komende te wpisujemy w konsoli, bedac w katalogu projektu.
Przykladowe generowanie modelu:
  "$ rails generate model Article title:string text:text"
W tym momencie mozna tez zdefiniowac relacje miedzy modelami korzystajac z belongs_to i has_many.
W tak stworzonym modelu musimy okreslic walidacje, czyli wymagania dotyczace parametrow. Stworzylismy walidacje w formie dosc podstawowej, zeby zaprezentowac dzialanie, ale nie komplikowac zbednie dodawania rekordow.

Analogicznie generujemy kontrolery:
  "$ rails generate controller Articles"
Przekazujac dodatkowe parametry mozemy stworzyc od razu metody, takie jak index, new, update itd.
W tym projekcie kontrolery nie sa konieczne, jednak stworzylismy ich podstawowa wersje zeby przedstawic sposob dzialania oraz umozliwic ewentualne inne metody dostepu do aplikacji (stworzenie frontendu, udostepnienie API).

Najciekawszym momentem tworzenia projektu bylo stworzenie danych za pomoca wspomnianych gemow, fakera i fabrication, oraz zapelnienie nimi bazy danych. Losowe dane sa generowane za kazdym razem gdy tworzymy baze danych. Mozna je modyfikowac w pliku seed.rb oraz fabrykatorach.

Zeby moc wykonac zapytania do naszej bazy danych musimy w katalogu z naszym projektem uruchomic nastepujace komendy:
rake bd:create
rake bd:migrate
rake bd:seed

nastepnie z konsoli railsowej mozemy juz wysylac zapytania do naszej bazy, np:
  Category.where('id < 100')
  Category.all.count

Zeby zmierzyc czas wykonywanych operacji wykorzystalismy nastepujaca metode: 
def 
  time(&block) puts Benchmark.measure(&block) 
end

I otrzymalismy dla ponizszych zapytan nastepujace wyniki:
  Product.all
  0.031086   0.010772   0.041858 (  0.042901)

  Product.all.count
  0.000824   0.000499   0.001323 (  0.004786)

  Product.where('id < 300')
  0.000107   0.000007   0.000114 (  0.000112)

  Product.joins("INNER JOIN suppliers ON products.supplier_id = suppliers.id AND products.discontinued = false")
  0.000073   0.000002   0.000075 (  0.000072)
