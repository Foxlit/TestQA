﻿#language: ru

@tree

Функционал: Закупка товара в офис

Как Заказчик я хочу
заказать услугу в N-ном кол-ве помимо товаров в заказе 
чтобы проверить отказоустойчивость системы  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Заказ в офис
И я закрываю все окна клиентского приложения

И В командном интерфейсе я выбираю "Продажи" "Заказы клиентов"
Тогда открылось окно "Заказы клиентов"
И в таблице 'Список' я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно "Заказ клиента (создание)"
И я нажимаю кнопку выбора у поля с именем 'Партнер'
Тогда открылось окно "Партнеры (Клиенты)"
И в таблице 'Список' я перехожу к строке:
	| "Бизнес-регион" | "Дата регистрации" | "Наименование"         | "Основной менеджер"         |
	| "Москва"        | "07.06.2010"       | "Все для дома Магазин" | "Петров Станислав Игоревич" |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И я нажимаю кнопку выбора у поля с именем 'Склад'
Тогда открылось окно "Склады и магазины"
И в таблице 'Список' я перехожу к строке:
	| "Наименование"   |
	| "Оптовые склады" |
И в таблице 'Список' я выбираю текущую строку
* Проверка склада
	Тогда элемент формы с именем 'Склад' стал равен "Оптовые склады"
Тогда открылось окно "Заказ клиента (создание) *"
И я перехожу к закладке с именем 'ГруппаТовары'
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование"       |
	| "Арт-7777" | "Барбарис (конфеты)" |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "5"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыВариантОбеспечения'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Резервировать по мере поступления"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВидЦены' я выбираю точное значение "<произвольная>"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование"          |
	| "ВН-900"   | "Вентилятор настольный" |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "10"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Резервировать по мере поступления"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВидЦены' я выбираю точное значение "<произвольная>"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование" |
	| "Л-90"     | "Лимонад"      |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "10"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыВариантОбеспечения'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Резервировать по мере поступления"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВидЦены' я выбираю точное значение "<произвольная>"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Наименование" |
	| "Аренда офиса" |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "12,000"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВидЦены' я выбираю точное значение "<произвольная>"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "10 000,00"
И в таблице 'Товары' я завершаю редактирование строки



И я перехожу к закладке с именем 'ГруппаОсновное'
И я нажимаю на гиперссылку с именем 'ДекорацияЭтапыОплаты'
Тогда открылось окно "Правила оплаты"
И в таблице 'ЭтапыГрафикаОплаты' я устанавливаю сортировку по колонке 'Срок (дн)'
И в таблице 'ЭтапыГрафикаОплаты' я нажимаю на кнопку с именем 'ЭтапыГрафикаОплатыДобавить'
И в таблице 'ЭтапыГрафикаОплаты' я активизирую поле с именем 'ЭтапыОплатыВариантОтсчета'
И в таблице 'ЭтапыГрафикаОплаты' из выпадающего списка с именем 'ЭтапыОплатыВариантОтсчета' я выбираю точное значение "до даты отгрузки"
И я перехожу к следующему реквизиту
И в таблице 'ЭтапыГрафикаОплаты' я активизирую поле с именем 'ЭтапыОплатыПроцентПлатежа'
И в таблице 'ЭтапыГрафикаОплаты' в поле с именем 'ЭтапыОплатыПроцентПлатежа' я ввожу текст "100,00"
И я нажимаю на кнопку с именем 'ФормаОК'
Когда открылось окно "Заказ клиента (создание) *"

* Проверка заполнения табличной части
	Тогда таблица 'Товары' стала равной:
		| 'Сумма'     |
		| '132,00'    |
		| '9 840,00'  |
		| '540,00'    |
		| '120 000,00'|
	и я нажимаю на кнопку "Записать"
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
Тогда открылось окно "1С:Предприятие"
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно "Подбор многооборотной тары *"
И я нажимаю на кнопку с именем 'Завершить'
И я жду закрытия окна "Заказ клиента (создание) *" в течение 20 секунд
* Проверка создания документа
	И таблица  "Список" содержит строки:
		| 'Номер'     |
		| '$Номер$'   |
