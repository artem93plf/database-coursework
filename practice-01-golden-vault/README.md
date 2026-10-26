# SQL-практика: золотое хранилище

## Схема базы данных

**Банк** оказывает клиентам услугу хранения золота.

У банка есть несколько `хранилищ` (сейфовых залов) в разных городах. `Клиент` может сдать на хранение несколько `слитков`, и каждый слиток лежит в одном конкретном хранилище. У слитка известны серийный номер, аффинажный завод, проба, вес, цена грамма на дату приёма и текущий статус: `stored` — хранится, `withdrawn` — уже выдан владельцу.

```sql
CREATE TABLE vaults (
  id integer PRIMARY KEY,
  name text NOT NULL,
  city text NOT NULL,
  capacity_bars integer NOT NULL CHECK (capacity_bars > 0),
  is_open boolean NOT NULL
);

CREATE TABLE clients (
  id integer PRIMARY KEY,
  full_name text NOT NULL,
  city text NOT NULL,
  phone text,
  registered_at date NOT NULL
);

CREATE TABLE gold_bars (
  id integer PRIMARY KEY,
  vault_id integer NOT NULL REFERENCES vaults(id),
  client_id integer NOT NULL REFERENCES clients(id),
  serial_number text NOT NULL UNIQUE,
  refinery text NOT NULL,
  fineness integer NOT NULL CHECK (fineness BETWEEN 900 AND 1000),
  weight_grams integer NOT NULL CHECK (weight_grams > 0),
  price_per_gram numeric(10,2) NOT NULL CHECK (price_per_gram > 0),
  deposited_at date NOT NULL,
  status text NOT NULL CHECK (status IN ('stored', 'withdrawn'))
);
```

## Задания

### [Слитки пробы 999](solutions/t01_fine_gold_bars.sql)

> **Условие**
>
> Подготовьте список слитков **пробы 999**: серийный номер, завод-производитель и вес в граммах. Порядок не важен.
>

### [Крупные слитки](solutions/t02_heavy_bars.sql)

> **Условие**
>
> Найдите слитки весом **строго больше 250 граммов** и покажите их серийные номера и вес. Порядок не важен.
>

### [Выданные слитки](solutions/t03_withdrawn_bars.sql)

> **Условие**
>
> Составьте реестр слитков, **уже выданных владельцам**. Нужны две величины: серийный номер под названием **serial** и дата приёма на хранение под названием **deposit_date**. Порядок не важен.
>

### [Список заводов-производителей](solutions/t04_refinery_list.sql)

> **Условие**
>
> Выведите **список аффинажных заводов**, чьи слитки есть в базе банка. Каждый завод — один раз, порядок не важен.
>

### [Стоимость слитков на хранении](solutions/t05_stored_bar_value.sql)

> **Условие**
>
> По слиткам, которые **сейчас хранятся** в банке, покажите две величины:
>
> - **bar_label** — подпись в виде «серийный номер (завод)», например «AB-1234 (Название завода)»;
> - **total_value** — стоимость слитка: вес, умноженный на цену грамма.
>
> Порядок не важен.
>

### [Три самых дорогих грамма](solutions/t06_top_price_bars.sql)

> **Условие**
>
> Найдите **три слитка с самой высокой ценой грамма** и покажите их серийные номера и цену грамма — от самой дорогой к менее дорогой.
>

### [Удалить ошибочную запись о слитке](solutions/t07_delete_bar_record.sql)

> **Условие**
>
> Запись о слитке с **номером 5** внесли в базу по ошибке — удалите её.
